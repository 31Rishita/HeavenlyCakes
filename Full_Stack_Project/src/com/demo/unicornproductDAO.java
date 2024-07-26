package com.demo;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class unicornproductDAO {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/fullstck_schema";
    private static final String JDBC_USERNAME = "root";
    private static final String JDBC_PASSWORD = "Test@123";

    // Method to retrieve all products from the database
    public List<Product> getAllProducts() {
        List<Product> products = new ArrayList<>();
        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USERNAME, JDBC_PASSWORD)) {
            String sql = "SELECT * FROM unicornproducts";
            try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                ResultSet rs = stmt.executeQuery();
                while (rs.next()) {
                    Product product = new Product();
                    product.setId(rs.getInt("id"));
                    product.setImage(rs.getString("image"));
                    product.setName(rs.getString("name"));
                    product.setRating(rs.getString("rating"));
                    product.setPrice(rs.getDouble("price"));
                    products.add(product);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }

    // Additional methods for CRUD operations can be added as needed
}