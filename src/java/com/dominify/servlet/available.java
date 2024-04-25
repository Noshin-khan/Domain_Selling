
package com.dominify.servlet;

import com.dominify.dao.domain_dao;
import com.dominify.entity.Domain;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;


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
            ArrayList available_domains =new ArrayList();
            Domain  dm=new Domain();
            dm.setHost(host);
          
            dm.setDomain(domain);
            domain_dao dd=new domain_dao();
           
            if(dd.checkAvailablity(dm))
           {
               HttpSession s=request.getSession();
              s.setAttribute("domain",dm);
               rd=request.getRequestDispatcher("service.jsp");
               rd.forward(request, response);
               

           }
           else
           {
              available_domains.addAll(dd.getAvail_domain());
              HttpSession s=request.getSession();
              s.setAttribute("domain",dm);
              s.setAttribute("available_domain", available_domains);
             
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