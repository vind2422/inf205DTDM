package Entity;
// Generated Feb 26, 2017 7:07:55 PM by Hibernate Tools 4.3.1



/**
 * Products generated by hbm2java
 */
public class Products  implements java.io.Serializable {


     private String code;
     private String name;
     private double price;

    public Products() {
    }

    public Products(String code, String name, double price) {
       this.code = code;
       this.name = name;
       this.price = price;
    }
   
    public String getCode() {
        return this.code;
    }
    
    public void setCode(String code) {
        this.code = code;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public double getPrice() {
        return this.price;
    }
    
    public void setPrice(double price) {
        this.price = price;
    }




}


