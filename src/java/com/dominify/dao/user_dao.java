
package com.dominify.dao;

import com.dominify.connectivity.user_connection;
import com.dominify.entity.User;
import java.sql.*;
import java.util.ArrayList;


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
                  u.setId(rs.getInt("id"));
                  u.setCurrency(rs.getInt("coin"));
         
                    ps.close();

        status=true;     
    }
          
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return status;
        
        
    }
  public boolean savecoin(int c,int id){
      status=false;
      String query="update user set coin=? where id=?";
      String query1="select coin from user where id=? ";
      try{
          int previouscoin=0;
         con =user_connection.getConnection(); 
      ps=con.prepareStatement(query1);
      ps.setInt(1, id);
      ResultSet set=ps.executeQuery();
      if(set.next()){
        previouscoin=set.getInt(1);
      }
            ps=con.prepareStatement(query);

      ps.setInt(1, previouscoin + c);
      ps.setInt(2, id);
      ps.executeUpdate();
      ps.close();
      status=true;
      }
      catch(Exception e){
          e.printStackTrace();
      }
      
      return status;
      
  }
  
    public void reservedomains(User u) {
        ArrayList al=new ArrayList();
        String query="select domain from registerDomain where id=? ";
        try{
        con =user_connection.getConnection();
        
      ps=con.prepareStatement(query);
      ps.setInt(1, u.getId());
       ResultSet set=ps.executeQuery();  
        while(set.next()){
           al.add(set.getString("hostname" ) + "." + set.getString("domain"));
        }
        u.setDomain(al);
       
        }
        catch(Exception e){
            e.printStackTrace();
        }
        
        
        
        

        
    }
 
    
    
}
