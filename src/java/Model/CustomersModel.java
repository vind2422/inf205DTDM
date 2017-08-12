/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author np
 */
public class CustomersModel {

    public CustomersModel() {
    }
    
    public boolean CheckLogin(String user, String pass){
         try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url="jdbc:sqlserver://localhost:1433;databaseName=SOF301";
            Connection con = DriverManager.getConnection(url, "sa", "");
            String sql = "Select * From Customers Where Username=? and Password=?";
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, user);
            stm.setString(2, pass);
            ResultSet rs = stm.executeQuery();
            boolean exist =false;
            exist = rs.next();
            rs.close();stm.close();con.close();
            if(exist){
                return true;
            }           
        }catch(Exception e){
            e.printStackTrace();
        }
        return false;
    }
}
