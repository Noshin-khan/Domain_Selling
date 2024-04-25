package com.dominify.servlet;

import com.dominify.dao.domain_dao;
import com.dominify.entity.Domain;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class final_page extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet final_page</title>");
            out.println("</head>");
            out.println("<body>");
            HttpSession s = request.getSession();
            Domain dm = (Domain) s.getAttribute("registerdomain");
            int price = (int) s.getAttribute("total_price");

            domain_dao d = new domain_dao();
            if(d.paymentAuth(price, dm)){
                if(d.store_domain(dm)){
                                   response.sendRedirect("domainsuccess.jsp");
 
                }
                else{
                    response.sendRedirect("service.jsp");
                }
            }
            else{
                               response.sendRedirect("coins.jsp");
 
            }

            out.println("</body>");
            out.println("</html>");
        }
    }

}
