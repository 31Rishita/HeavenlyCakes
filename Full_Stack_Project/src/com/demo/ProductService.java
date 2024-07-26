package com.demo;
//import  com.demo.Product1;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductService {
    private Connection getConnection() throws SQLException {
        // Implement your database connection logic here
        String url = "jdbc:mysql://localhost:3306/fullstck_schema";
        String username = "root";
        String password = "Test@123";
        return DriverManager.getConnection(url, username, password);
    }

    public Product getProductById(int id) {
        Product product = null;
        String sql = "SELECT id, name, image_url, description, price FROM products WHERE id = ?";

        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {

            statement.setInt(1, id);
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                product = new Product();
                product.setId(resultSet.getInt("id"));
                product.setName(resultSet.getString("name"));
                product.setImage(resultSet.getString("image_url"));
                //product.setDescription(resultSet.getString("description"));
                product.setPrice(resultSet.getDouble("price"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return product;
    }
}
