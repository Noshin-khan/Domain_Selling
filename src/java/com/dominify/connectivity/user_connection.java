
package com.dominify.connectivity;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class user_connection {
        private static Connection con;
    public static Connection getConnection() throws SQLException
    {
        String url="jdbc:mysql://localhost:3306/dominify";
        String username="root";
        String password="chilman23";
        if(con==null)
        {
            try
            {
             Class.forName("com.mysql.cj.jdbc.Driver");
             con=DriverManager.getConnection(url,username,password);
            }
            catch (Exception e)
            {
                e.printStackTrace();
            }
        }
        
        return con;
        
    }
    
}
