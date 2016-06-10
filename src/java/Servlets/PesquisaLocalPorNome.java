/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import controle.LocalImpl;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.local;

/**
 *
 * @author Qualidade
 */
@WebServlet(name = "PesquisaLocalPorNome", urlPatterns = {"/pesquisaLocalPorNome"})
public class PesquisaLocalPorNome extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            
            
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet PesquisaMotorista</title>");            
            out.println("</head>");
            out.println("<body>");
         // out.println("<h1>Servlet PesquisaMotorista at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //processRequest(request, response);
            if (("".equals(request.getParameter("codigo")))&&(!"".equals(request.getParameter("nome")))){   
                   
                    String nomeLocal = request.getParameter("nome");
                    LocalImpl localDao = new LocalImpl();
                    //pesquisei pelo motorista
                    List<local> local = localDao.findByNome(nomeLocal);
        
                    request.setAttribute("local", local);
                    RequestDispatcher dispatcher;
                    dispatcher = request.getRequestDispatcher("PesquisaLocalPorNome.jsp");
                    dispatcher.forward(request, response);
            }
            if ((!"".equals(request.getParameter("codigo")))&&("".equals(request.getParameter("nome")))){
                int cod = Integer.valueOf(request.getParameter("codigo"));
                 response.sendRedirect("pesquisaLocalporid?id="+cod);
                                        
            }
                
            if (("".equals(request.getParameter("codigo")))&&("".equals(request.getParameter("nome")))){
               response.sendRedirect("local.jsp");
              
            }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
         response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
           
            
            
        }
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
