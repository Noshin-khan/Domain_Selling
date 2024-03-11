
package com.dominify.filters;

import com.dominify.entity.User;
import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

public class Project_filter implements Filter {

    @Override
    public void doFilter(ServletRequest sr, ServletResponse sr1, FilterChain fc) throws IOException, ServletException {
       
        HttpServletRequest hs=(HttpServletRequest)sr;
     HttpSession hp  = hs.getSession();
     User u=(User)hp.getAttribute("user");
     if(u!=null){
         fc.doFilter(sr, sr1);
     }
     else{
        RequestDispatcher rd= hs.getRequestDispatcher("login.jsp");
        
        rd.forward(sr, sr1);
        
     }  
        
    }
    
}
