package Servlets;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



import controle.MaterialImpl;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Material;

/**
 *
 * @author LAB03-22
 */
@WebServlet(name = "AtualizarMaterial", urlPatterns = {"/atualizarMaterial"})
public class AtualizarMaterial extends HttpServlet {

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
            out.println("<title>Servlet AtualizarMotorista</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AtualizarMotorista at " + request.getContextPath() + "</h1>");
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
        processRequest(request, response);
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
        //processRequest(request, response);
        int codigo = Integer.valueOf(request.getParameter("id"));
         
        
        if(!"".equals(request.getParameter("nome"))){
        
            Material material = new Material();//cria o objeto Fornecedor
            
            material.setId(Integer.valueOf(request.getParameter("id")));
            material.setNome(request.getParameter("nome"));//preenche o objeto 
            material.setPreco(Double.valueOf(request.getParameter("preco")));
            material.setUnidade(request.getParameter("unidade"));
            //falta terminar
            
            MaterialImpl materialDao = new MaterialImpl();//cria o objeto 
           
             //salva
           
            materialDao.atualizar(material);
           //retorna pra a tela de cadastro
        }
        
        response.sendRedirect("pesquisaMaterialporid?id=" + codigo);
         
              
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
