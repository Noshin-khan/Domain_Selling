
package com.dominify.servlet;

import com.dominify.dao.domain_dao;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class available extends HttpServlet {

   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try  {
            PrintWriter out = response.getWriter();
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet available</title>");            
            out.println("</head>");
            out.println("<body>");
           String url=request.getParameter("domain");
           int begin=0; 
           int end=url.length();
            int index=0;
             RequestDispatcher rd;
            for(int i=0;i<end;i++)
            {
                if(url.charAt(i)=='.')
                {
                    index=i;
                    break;
                }
                
            }
            String host=url.substring(begin,index);
            String domain=url.substring(index+1, end);
            domain_dao dd=new domain_dao();
            if(dd.checkAvailablity(host))
           {
               request.setAttribute("allocate_domain",url);
               rd=request.getRequestDispatcher("service.jsp");
               rd.forward(request, response);
               

           }
           else
           {
                rd=request.getRequestDispatcher("unavailable.jsp");
               rd.forward(request, response);
           }
            out.println("</body>");
            out.println("</html>");
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }

    

}
