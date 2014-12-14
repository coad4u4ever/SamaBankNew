/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Models.BankAccount;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author coad4u4ever
 */
public class EditPassword extends HttpServlet {

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
        String password = request.getParameter("password");
        String repassword = request.getParameter("repassword");
        HttpSession s = request.getSession();
        
        
        
        String msg = "";
        if (!password.equals(repassword)) {
            msg = "Invalid Password";
            request.setAttribute("msg", msg);
            getServletContext().getRequestDispatcher("/editpassword.jsp").forward(request, response);
        } else {
            BankAccount ba = (BankAccount) s.getAttribute("user");
            ba.setPassword(password);
            if (ba.update()) {
                msg = "Update Complete";
                request.setAttribute("msg", msg);
                s.setAttribute("user", ba);
                getServletContext().getRequestDispatcher("/editpassword.jsp").forward(request, response);
            } else {
                msg = "Update Error";
                request.setAttribute("msg", msg);
                getServletContext().getRequestDispatcher("/editpassword.jsp").forward(request, response);
            }
        }
        getServletContext().getRequestDispatcher("/editpassword.jsp").forward(request, response);
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
        processRequest(request, response);
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
