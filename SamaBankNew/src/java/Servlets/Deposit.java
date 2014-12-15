/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Models.BankAccount;
import Utilities.Checker;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author toi
 */
public class Deposit extends HttpServlet {

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
        String depositamount = request.getParameter("depositamount");
        HttpSession s = request.getSession();
        BankAccount ba = (BankAccount) s.getAttribute("user");
        if (depositamount == null) {
            getServletContext().getRequestDispatcher("/deposit.jsp").forward(request, response);
            return;
        }
        String msg = "";
        if (Utilities.Checker.isDouble(depositamount)) {
            if(Double.parseDouble(depositamount)<=0){
                msg = "Invalid amount";
                request.setAttribute("msg", msg);
                getServletContext().getRequestDispatcher(response.encodeURL("/deposit.jsp")).forward(request, response);
                return;
            }
            if (ba.deposit(Double.parseDouble(depositamount))) {
                ba.setBalance(BankAccount.getBalanceByAccountID(ba.getAccountId()));
                s.setAttribute("user", ba);
                System.out.println(ba.getBalance());
                msg = "Deposit complete";
                request.setAttribute("msg", msg);
                getServletContext().getRequestDispatcher(response.encodeURL("/deposit.jsp")).forward(request, response);
            } else {
                msg = "Deposit error";
                request.setAttribute("msg", msg);
                getServletContext().getRequestDispatcher(response.encodeURL("/deposit.jsp")).forward(request, response);
            }
        } else {
            msg = "Invalid amount";
            request.setAttribute("msg", msg);
            getServletContext().getRequestDispatcher(response.encodeURL("/deposit.jsp")).forward(request, response);
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
