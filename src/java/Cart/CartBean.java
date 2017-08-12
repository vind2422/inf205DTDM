/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Cart;

import java.util.HashMap;

/**
 *
 * @author np
 */
public class CartBean extends HashMap {
    
    public CartBean() {
        super();
    } 
    
    public void addSanPham(ProductDTO pd){
        String key = pd.getProduct().getCode();
        if(this.containsKey(key)){
            int oldQuantity = ((ProductDTO)this.get(key)).getQuantity();
            ((ProductDTO)this.get(key)).setQuantity(oldQuantity+1);
        }else{
            this.put(pd.getProduct().getCode(), pd);
        }
    }
    public boolean removeSanPham(String code){
        if(this.containsKey(code)){
            this.remove(code);
            return true;
        }
        return false;
    }
       
    public static void main(String [] args){
        CartBean cb = new CartBean();
        if(cb.removeSanPham("iP401")){
            System.out.println("Ok");
        }else{
            System.out.println("No");
        }
        
    }
}
