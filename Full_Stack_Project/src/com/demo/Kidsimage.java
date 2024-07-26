package com.demo;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Random;

public class Kidsimage {

    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/fullstck_schema";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "Test@123";

    public static void main(String[] args) {
        try {
            // Inserting a random cake for demonstration
            insertRandomCake();
        } catch (IOException | SQLException e) {
            e.printStackTrace();
        }
    }

    private static void insertRandomCake() throws IOException, SQLException {
        Connection conn = null;
        PreparedStatement statement = null;
        FileInputStream inputStream = null;

        try {
            conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
            String sql = "INSERT INTO cake (name, type, description, image_data) VALUES ('photo','photocake','Photo Cake','C:/Users/HP/Pictures/OneDrive/Desktop/Project/photo-cake.avif')";
            statement = conn.prepareStatement(sql);

            // Generate random values for demonstration
            String[] names = {"Alphabet Cake", "Photo Cake", "Tier Cake", "Cartoon Cake"};
            String[] types = {"Photo", "Tier", "Cartoon", "Designer"};
            String[] descriptions = {"A cake with alphabet shapes on it.", "A cake with a beautiful photo print.",
                    "A multi-tiered cake for special occasions.", "A cake designed with favorite cartoon characters."};
            String[] imagePaths = {
                    "C:/Users/HP/Pictures/OneDrive/Desktop/Project/alphabet-cake.avif",
                    "C:/Users/HP/Pictures/OneDrive/Desktop/Project/photo-cake.avif",
                    "C:/Users/HP/Pictures/OneDrive/Desktop/Project/tier-cake.avif",
                    "C:/Users/HP/Pictures/OneDrive/Desktop/Project/cartoon-cake.avif"
            };

            Random random = new Random();
            int index = random.nextInt(names.length);

            String name = names[index];
            String type = types[index];
            String description = descriptions[index];
            String imagePath = imagePaths[index];

            statement.setString(1, name);
            statement.setString(2, type);
            statement.setString(3, description);

            File imageFile = new File(imagePath);
            inputStream = new FileInputStream(imageFile);
            statement.setBinaryStream(4, inputStream);

            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
                System.out.println("A new cake was inserted successfully!");
            }
        } finally {
            if (inputStream != null) {
                inputStream.close();
            }
            if (statement != null) {
                statement.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
    }
}
