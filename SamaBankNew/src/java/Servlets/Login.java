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
public class Login extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("id");
        String password = request.getParameter("password");
        BankAccount ba = BankAccount.findAccountByID(id);
        String msg = "";
        if (ba == null) {
            msg = "Invalid ID";
            request.setAttribute("msg", msg);
            getServletContext().getRequestDispatcher(response.encodeURL("/login.jsp")).forward(request, response);
        } else {
            String realPassword = ba.getPassword();
            if (password.equals(realPassword)) {
                HttpSession s = request.getSession();
                s.setAttribute("user", ba);
                s.setMaxInactiveInterval(60*60*24*7);
                getServletContext().getRequestDispatcher(response.encodeURL("/index.jsp")).forward(request, response);
            } else {
                msg = "Invalid Password";
                request.setAttribute("msg", msg);
                getServletContext().getRequestDispatcher(response.encodeURL("/login.jsp")).forward(request, response);
            }
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
