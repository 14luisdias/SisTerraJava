/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import controle.RotaImpl;
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
import modelo.Rota;

/**
 *
 * @author Qualidade
 */
@WebServlet(name = "PesquisaRotaPorNome", urlPatterns = {"/pesquisaRotaPorNome"})
public class PesquisaRotaPorNome extends HttpServlet {

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
        
          RotaImpl rotaDao = new RotaImpl();
          int idSaida = Integer.valueOf(request.getParameter("saida"));
          int idDestino = Integer.valueOf(request.getParameter("destino"));
          
          if ("".equals(request.getParameter("codigo")))
          {
            if (((("0".equals(request.getParameter("saida")))) || ("0".equals(request.getParameter("destino")))))
            {   
               if((!"0".equals(request.getParameter("saida")))&& ("0".equals(request.getParameter("destino"))))
                {
                            List<Rota> rota = rotaDao.findBySaida(idSaida);
                            request.setAttribute("rota", rota);
                }else{
                            List<Rota> rota = rotaDao.findByDestino(idDestino);
                            request.setAttribute("rota", rota);
                      }
            }else{
                            List<Rota> rota = rotaDao.findBySaidaDestino(idSaida, idDestino);
                            request.setAttribute("rota", rota);
                  }
               
                   
                   RequestDispatcher dispatcher;
                   dispatcher = request.getRequestDispatcher("PesquisaRotaPorNome.jsp");
                   dispatcher.forward(request, response);
          }else{      
               if ((!"".equals(request.getParameter("codigo")))&&("0".equals(request.getParameter("saida")))&&("0".equals(request.getParameter("destino"))))
                   {
                    int cod = Integer.valueOf(request.getParameter("codigo"));
                    response.sendRedirect("pesquisaRotaporid?id="+cod);
                                        
                    }else{
                        if (("".equals(request.getParameter("codigo")))&&("0".equals(request.getParameter("saida")))&&("0".equals(request.getParameter("destino"))))
                             {
                               response.sendRedirect("rota.jsp");
              
                             }
               }
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
