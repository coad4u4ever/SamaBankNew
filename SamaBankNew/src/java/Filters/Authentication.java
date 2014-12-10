package Filters;

import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author coad4u4ever
 */
public class Authentication implements Filter {

    FilterConfig config;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        config = filterConfig;
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpSession s = ((HttpServletRequest) request).getSession();
        HttpServletResponse rp = (HttpServletResponse) response;
        HttpServletRequest rq= (HttpServletRequest)request;
        if (s.getAttribute("user") == null) {
            System.out.println("33333");
            rp.sendRedirect(rq.getContextPath()+"/login.jsp");
            return;
        } else {
            chain.doFilter(request, response);
        }

    }

    @Override
    public void destroy() {
    }
}
