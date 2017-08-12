/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Product;
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
public class ProductDAO {
    
    public List<Product> getCodeProduct(String tensp){
        List<Product> list = new ArrayList<Product>();
        try{
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=SOF301";
            Connection con = DriverManager.getConnection(url, "sa", "");
            String sql = "Select * From Products";
            if(tensp.length() > 0){
                sql += " where Name like '%"+tensp+"%'";
            }
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Product product = new Product();
                product.setCode(rs.getString("Code"));
                product.setName(rs.getString("Name"));
                product.setPrice(rs.getFloat("Price"));
                
                list.add(product);
            }

        }catch(Exception e){
            e.printStackTrace();
        }
        return list;
    }
    
//    public static void main(String[] args) {
//        ProductDAO pd = new ProductDAO();
//        for (Product pr : pd.getCodeProduct("A100")) {
//            System.out.println(pr.getCode()+ " ... " + pr.getName()+ " ... " + pr.getPrice());
//        }
//    }
    
}
