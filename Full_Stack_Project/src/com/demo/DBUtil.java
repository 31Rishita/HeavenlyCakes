package com.demo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DBUtil {
    private static final String URL = "jdbc:mysql://localhost:3306/winni";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "Test@123";

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USERNAME, PASSWORD);
    }

    public static void closeConnection(Connection conn) {
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public static void insertPaymentDetails(PaymentDetails paymentDetails) {
        String sql = "INSERT INTO payment_details (card_holder_name, card_number, expiry_month, expiry_year, cvv) VALUES (?, ?, ?, ?, ?)";

        try (Connection conn = getConnection();
             PreparedStatement statement = conn.prepareStatement(sql)) {

            statement.setString(1, paymentDetails.getCardHolderName());
            statement.setString(2, paymentDetails.getCardNumber());
            statement.setString(3, paymentDetails.getExpiryMonth());
            statement.setString(4, paymentDetails.getExpiryYear());
            statement.setString(5, paymentDetails.getCvv());

            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
