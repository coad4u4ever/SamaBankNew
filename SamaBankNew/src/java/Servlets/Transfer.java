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
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author coad4u4ever
 */
public class Transfer extends HttpServlet {

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
        String transferamount = request.getParameter("transferamount");
        String transfer = request.getParameter("transferTo");
        HttpSession s = request.getSession();
        BankAccount ba = (BankAccount) s.getAttribute("user");
        if (transfer == null) {
            List accountlists = BankAccount.getAllAccountExceptParameter(ba.getAccountId());
            s.setAttribute("accountlists", accountlists);
            getServletContext().getRequestDispatcher("/transfer.jsp").forward(request, response);
            return;
        }

        if (transferamount == null) {
            List accountlists = BankAccount.getAllAccountExceptParameter(ba.getAccountId());
            s.setAttribute("accountlists", accountlists);
            getServletContext().getRequestDispatcher("/transfer.jsp").forward(request, response);
            return;
        }

        String msg = "";

        if (Checker.isDouble(transferamount)) {
            double transfermoney = Double.parseDouble(transferamount);
            if (transfermoney <= 0.0) {
                msg = "Invalid amount";
                request.setAttribute("msg", msg);
                getServletContext().getRequestDispatcher(response.encodeURL("/transfer.jsp")).forward(request, response);

            } else if (transfermoney > ba.getBalance()) {
                msg = "Transfer more than your balance";
                request.setAttribute("msg", msg);
                getServletContext().getRequestDispatcher(response.encodeURL("/transfer.jsp")).forward(request, response);
            } else {
                if (ba.transfer(Long.parseLong(transfer), transfermoney)) {
                    ba.setBalance(BankAccount.getBalanceByAccountID(ba.getAccountId()));
                    s.setAttribute("user", ba);
                    msg = "Transfer complete";
                    request.setAttribute("msg", msg);
                    getServletContext().getRequestDispatcher(response.encodeURL("/transfer.jsp")).forward(request, response);
                } else {
                    msg = "Transfer Error";
                    request.setAttribute("msg", msg);
                    getServletContext().getRequestDispatcher(response.encodeURL("/transfer.jsp")).forward(request, response);
                }
            }
        } else {
            msg = "Invalid amount";
            request.setAttribute("msg", msg);
            getServletContext().getRequestDispatcher(response.encodeURL("/transfer.jsp")).forward(request, response);
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
