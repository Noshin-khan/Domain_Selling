package com.dominify.servlet;

import com.dominify.dao.domain_dao;
import com.dominify.entity.Domain;
import com.dominify.entity.User;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class bookdomain extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet bookdomain</title>");
            out.println("</head>");
            out.println("<body>");
            HttpSession s = request.getSession();
            User u=(User)s.getAttribute("user");
            Domain dom = (Domain) s.getAttribute("domain");
            dom.setDatabase(request.getParameter("database"));
            dom.setSsl(request.getParameter("certify"));
            dom.setValid(Integer.parseInt(request.getParameter("time")));
            dom.setDomain_sell(request.getParameter("reselling"));

            dom.setOwner(u.getId());
            

            domain_dao d = new domain_dao();
            int price = d.save_domain(dom);
            if (price > 0) {
                dom.setPrice(price);
              s.setAttribute("registerdomain", dom);
              response.sendRedirect("Payment1.jsp");
            }

            out.println("</body>");
            out.println("</html>");
        }
    }

}
