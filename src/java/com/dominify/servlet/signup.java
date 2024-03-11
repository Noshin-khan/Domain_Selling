
package com.dominify.servlet;

import com.dominify.dao.user_dao;
import com.dominify.entity.User;
import jakarta.servlet.RequestDispatcher;
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
public class signup extends HttpServlet {

    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet signup</title>");            
            out.println("</head>");
            out.println("<body>");
            String name=request.getParameter("name");
            String pass=request.getParameter("password");
            String email=request.getParameter("email");
            User u=new User(name,email,pass);
            user_dao ud=new user_dao();
           
            if( ud.saveuser(u))
            {
                response.sendRedirect("login.jsp");
               // RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
              //  rd.forward(request, response);
            }
            else{
                response.sendRedirect("SignUp.jsp");
                //RequestDispatcher rd=request.getRequestDispatcher("SignUp.jsp");
               // rd.forward(request, response);
            }
            out.println("</body>");
            out.println("</html>");
        }
    }

    

}
