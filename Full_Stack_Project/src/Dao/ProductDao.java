package Dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;

import web.Cart;
import web.Product1;

public class ProductDao {
    private Connection con;
    private String query;
    private PreparedStatement pst;
    private ResultSet rs;

    public ProductDao(Connection con) {
        this.con = con;
    }

    public List<Product1> getAllProducts() {
        List<Product1> products = new ArrayList<Product1>();
        try {
            query = "SELECT * FROM photoproducts";
            pst = this.con.prepareStatement(query);
            rs = pst.executeQuery(); // Assign the ResultSet to rs
            while (rs.next()) {
                Product1 row = new Product1();
                row.setId(rs.getInt("id"));
                row.setName(rs.getString("name"));
                row.setCategory(rs.getString("category"));
                row.setPrice(rs.getDouble("price"));
                row.setImage(rs.getString("image"));

                products.add(row);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
            e.printStackTrace();
        }
        return products;
    }

    public List<Cart> getCartProducts(ArrayList<Cart> cartList) {
        List<Cart> products = new ArrayList<Cart>();
        try {
            if (cartList.size() > 0) {
                for (Cart item : cartList) {
                    query = "SELECT * FROM photoproducts WHERE id=?";
                    pst = this.con.prepareStatement(query);
                    pst.setInt(1, item.getId());
                    rs = pst.executeQuery();
                    while (rs.next()) {
                        Cart row = new Cart();
                        row.setId(rs.getInt("id"));
                        row.setName(rs.getString("name"));
                        row.setCategory(rs.getString("category"));
                        row.setPrice(rs.getDouble("price") * item.getQuantity());
                        row.setQuantity(item.getQuantity());
                        products.add(row);
                    }
                }
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
            e.printStackTrace();
        }
        return products;
    }

    public double getTotalCartPrice(ArrayList<Cart> cartList) {
        double sum = 0;
        try {
            for (Cart item : cartList) {
                query = "SELECT price FROM photoproducts WHERE id=?";
                pst = this.con.prepareStatement(query);
                pst.setInt(1, item.getId());
                rs = pst.executeQuery();

                while (rs.next()) {
                    sum += rs.getDouble("price") * item.getQuantity();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return sum;
    }
}