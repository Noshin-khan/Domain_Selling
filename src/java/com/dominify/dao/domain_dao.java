
package com.dominify.dao;
import java.sql.*;
import com.dominify.connectivity.*;


public class domain_dao {
    private boolean availabilty=false;
    private Connection con;

   
    private PreparedStatement ps;
    private ResultSet rs;
    private int domain_arr[];
    private String avail_domain[];
    private int count=0;
    
     public String[] getAvail_domain() {
        return avail_domain;
    }
    public boolean checkAvailablity(String host)
    {
        String query="select domain_name from domain where host_name=? ";
        try {
            domain_arr=new int [5];
            avail_domain=new String[5];
            domain_arr[0]=1;
            domain_arr[1]=1;
            domain_arr[2]=1;
            domain_arr[3]=1;
            domain_arr[4]=1;
            con=user_connection.getConnection();
            ps=con.prepareStatement(query);
            ps.setString(1, host);
            rs=ps.executeQuery();
            
            while(rs.next())
            {
                String temp=rs.getString(1);
                switch(temp)
                {
                    case "com" :
                        domain_arr[0]=0;
                        continue;
                    case "in" :
                        domain_arr[1]=0;
                        continue;
                    case "org" :
                        domain_arr[2]=0;
                        continue;
                    case "net" :
                        domain_arr[3]=0;
                        continue;
                    case "ai" :
                        domain_arr[4]=0;
                        continue;
                }
            }
                for(int i=0;i<5;i++)
                {
                    if(domain_arr[i]==1)
                    {
                        count++;
                       switch(i){
                           case 0 :
                               avail_domain[i]="com";
                               continue;
                           case 1 :
                               avail_domain[i]="in";
                              continue;
                           case 2 : 
                               avail_domain[i]="org";
                               continue;
                           case 3 : 
                               avail_domain[i]="net";
                               continue;
                           case 4 :
                               avail_domain[i]="ai";
                               continue;    
                       }
                    }
                    else
                    {
                        continue;
                    }  
                }
                if(count>0)
                {
                    availabilty=true;
                }
                
                
                
            
         } 
        catch (Exception e) {
            e.printStackTrace();
        }
        
        
        return availabilty;
    }
    
}
