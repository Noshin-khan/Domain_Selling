/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.dominify.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author noshi
 */
public class demo extends HttpServlet {

   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet demo</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet demo at " + request.getContextPath() + "</h1>");
           String temp = request.getParameter("n");
                      String temp1 = request.getParameter("k");
                                out.println("<h1>Servlet demo at " + temp + "</h1>");
                                      out.println("<h1>Servlet demo at " + temp1 + "</h1>");

  

            out.println("</body>");
            out.println("</html>");
        }
    }


}
