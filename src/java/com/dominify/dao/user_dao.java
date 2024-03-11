
package com.dominify.dao;

import com.dominify.connectivity.user_connection;
import com.dominify.entity.User;
import java.sql.*;


public class user_dao {
   private Connection con;
   private boolean status=false;
  private PreparedStatement ps;
  
  public boolean saveuser(User u) {
      String query="insert into user (uname,upassword,uemail) values (?,?,?)";
      try{
         con =user_connection.getConnection(); 
      ps=con.prepareStatement(query);
      ps.setString(1, u.getName());
      ps.setString(2, u.getPassword());
      ps.setString(3, u.getEmail());
      ps.executeUpdate();
      ps.close();
      status=true;
      }
      catch(Exception e){
          e.printStackTrace();
      }
      return status;
      
  }
  public boolean getuser(User u){
        String q="select * from user where upassword=? and uemail=?";
        try{
            con=user_connection.getConnection();
        ps  =  con.prepareStatement(q);
        ps.setString(1, u.getPassword());
        ps.setString(2, u.getEmail());
    ResultSet rs   = ps.executeQuery();
    if(rs.next()){
        
        
        u.setEmail(rs.getString("uemail"));
         u.setPassword(rs.getString("upassword"));
         u.setName(rs.getString("uname"));
                    ps.close();

        status=true;     
    }
          
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return status;
        
        
    }
    
    
}
