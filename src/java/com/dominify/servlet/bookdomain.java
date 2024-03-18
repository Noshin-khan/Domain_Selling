
package com.dominify.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


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
           String host=request.getParameter("host");
           out.println("<h1> Host" + host + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    

}
