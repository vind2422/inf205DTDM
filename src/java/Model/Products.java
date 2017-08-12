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
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author np
 */
public class Products {

    public Products() {
    }
    
    public void Delete(String masp){
        try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=SOF301";
            Connection con = DriverManager.getConnection(url, "sa", "");
            String sql = "Delete From Products Where Code=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, masp);
            ps.executeUpdate();
            ps.close();
            con.close();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
    public void Update(String masp, String tensp, float gia){
        try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=SOF301";
            Connection con = DriverManager.getConnection(url, "sa", "");
            String sql = "UPDATE Products set Name=?, Price=? WHERE Code=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, tensp);
            ps.setFloat(2, gia);
            ps.setString(3, masp);
            ps.executeUpdate();
            ps.close();
            con.close();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
    public void Insert(String masp, String tensp, float gia){
        try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=SOF301";
            Connection con = DriverManager.getConnection(url, "sa", "");
            String sql = "INSERT INTO Products VALUES(?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, masp);
            ps.setString(2, tensp);
            ps.setFloat(3, gia);
            ps.executeUpdate();
            ps.close();
            con.close();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
    public List<Product>  showProduct(String tensp){
        try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=SOF301";
            Connection con = DriverManager.getConnection(url, "sa", "");
            String sql = "Select * from Products";
            if(tensp.length()>0){
                sql +="Where Name like '%"+tensp+"%'";
            }
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs =ps.executeQuery();
            List<Product> list = new ArrayList<Product>();
            while(rs.next()){
                String code = rs.getString("Code");
                String name = rs.getString("Name");
                float price = rs.getFloat("Price");
                Product sp = new Product(code, name, price);
                list.add(sp);
            }
            return list;
        }catch(Exception e){
            e.printStackTrace();
        }
        return null;
    }
}
