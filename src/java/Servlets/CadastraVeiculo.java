/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import controle.VeiculoImpl;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Veiculo;

/**
 *
 * @author 14luisdias
 */
@WebServlet(name = "CadastrarVeiculo", urlPatterns = {"/cadastrarVeiculo"})
public class CadastraVeiculo extends HttpServlet {

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
            out.println("<title>Servlet CadastrarMotorista</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CadastrarMotorista at " + request.getContextPath() + "</h1>");
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
        
        if(!"0".equals(request.getParameter("tipo"))){
           
                  
                  
                  Veiculo veiculo = new Veiculo();//cria o objeto 
                  veiculo.setPlaca(request.getParameter("placa"));
                  veiculo.setCapacidade(Double.valueOf(request.getParameter("capacidade")));
                  veiculo.setCodTipo(Integer.valueOf(request.getParameter("tipo")));//preenche o objeto 
                  veiculo.setCodMotorista(Integer.valueOf(request.getParameter("motorista")));
                  
            
                   VeiculoImpl veiculoDao = new VeiculoImpl();//cria o objeto 
            
             //salva
                    veiculoDao.salvar(veiculo);
            //retorna pra a tela de cadastro
          
        }
        
        response.sendRedirect("cadastrarVeiculo.jsp");
              
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
