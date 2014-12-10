package Servlets;

import Models.BankAccount;
import Models.Branch;
import Utilities.Checker;
import java.io.IOException;
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
public class SignUp extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("id");
        String password = request.getParameter("password");
        String repassword = request.getParameter("repassword");
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String balance = request.getParameter("balance");
        String accounttype = request.getParameter("accounttype");
        String branch = request.getParameter("branch");
        String msg = "";
        List branches = Branch.getAllBranchId();
        request.setAttribute("branches", branches);
        if (id == null) {

            getServletContext().getRequestDispatcher("/signup.jsp").forward(request, response);

        } else {
            BankAccount ba = new BankAccount();
            ba.setId(id);
            ba.setPassword(password);
            ba.setFname(fname);
            ba.setLname(lname);
            ba.setAccountType(Integer.parseInt(accounttype));
            ba.setBranchId(Integer.parseInt(branch));
            System.out.println("branch: " + branch);
            if (Checker.isDouble(balance)) {
                ba.setBalance(Double.parseDouble(balance));
            } else {
                msg = "Invalid Type of Balance.";
                request.setAttribute("msgBalance", msg);
                request.setAttribute("user", ba);
                getServletContext().getRequestDispatcher("/signup.jsp").forward(request, response);
                return;
            }
            if (!password.equals(repassword)) {
                msg = "Re-Password again.";
                request.setAttribute("msgPassword", msg);
                request.setAttribute("user", ba);
                getServletContext().getRequestDispatcher("/signup.jsp").forward(request, response);
                return;
            }

            if (ba.save()) {
                HttpSession s = request.getSession();
                s.setAttribute("user", ba);
                s.setMaxInactiveInterval(60 * 60 * 7 * 24);
                getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
            } else {
                msg = "SAVE ERROR";
                request.setAttribute("msgSave", msg);
                request.setAttribute("user", ba);
                getServletContext().getRequestDispatcher("/signup.jsp").forward(request, response);
                return;
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
