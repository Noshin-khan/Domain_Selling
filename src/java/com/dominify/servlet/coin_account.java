
package com.dominify.servlet;

import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


public class coin_account extends HttpServlet {

   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet coin_account</title>");            
            out.println("</head>");
            out.println("<body>");
            String c=request.getParameter("coins");
                        int coin=Integer.parseInt(c);
                        
                       String method= request.getParameter("select_method");
                              HttpSession s=request.getSession();
                          
                       s.setAttribute("coin", coin);
                       request.setAttribute("price", coin*10);
                      // out.println("<h1>" +coin + "</h1>");
                       s.setAttribute("payment_method",method);
                       
                       
                       RequestDispatcher rd=request.getRequestDispatcher("Payment.jsp");
                       rd.forward(request, response);

            out.println("</body>");
            out.println("</html>");
        }
    }


}
