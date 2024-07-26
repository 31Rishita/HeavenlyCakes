package com.demo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class RecipientController {

    private static final String URL = "jdbc:mysql://localhost:3306/fullstck_schema";
    private static final String USER = "root";
    private static final String PASSWORD = "Test@123";
    private static final String DRIVER_CLASS = "com.mysql.cj.jdbc.Driver";
    
    static {
        try {
            Class.forName(DRIVER_CLASS);
        } catch (ClassNotFoundException e) {
            throw new ExceptionInInitializerError("Failed to load JDBC driver: " + DRIVER_CLASS);
        }
    }
    public List<Recipient> getUsers(){
    	List<Recipient> listUser = new ArrayList<>();
        String query = "select * from recipient_details";

        try (Connection con = DriverManager.getConnection(URL, USER, PASSWORD);
             Statement stmt = con.createStatement();
             ResultSet rs = stmt.executeQuery(query)) {

            while (rs.next()) {
                Recipient usr = new Recipient();
                usr.setPhone(rs.getString("phone"));
                usr.setAddress(rs.getString("address"));
                usr.setLandmark(rs.getString("landmark"));
                usr.setPincode(rs.getString("pincode"));
                usr.setCity(rs.getString("city"));
                usr.setRecipientPhone(rs.getString("reciepientPhone"));
                usr.setAlternatePhone(rs.getString("alternatePhone"));
                listUser.add(usr);
            }

        } catch (SQLException e) {
            System.err.println("Exception: " + e.getLocalizedMessage());
            e.printStackTrace();
        }

        return listUser;
    }
    
    public void setUsers(Recipient usr) {
        String query = "INSERT INTO recipient_details (phone, address, landmark, pincode, city, recipientPhone, alternatePhone) VALUES (?, ?, ?, ?, ?, ?, ?)";

        try (Connection con = DriverManager.getConnection(URL, USER, PASSWORD);
             PreparedStatement pstmt = con.prepareStatement(query)) {
            pstmt.setString(1, usr.getPhone());
            pstmt.setString(2, usr.getAddress());
            pstmt.setString(3, usr.getLandmark());
            pstmt.setString(4, usr.getPincode());
            pstmt.setString(5, usr.getCity());
            pstmt.setString(6, usr.getRecipientPhone());
            pstmt.setString(7, usr.getAlternatePhone());
            
            pstmt.executeUpdate();

        } catch (SQLException e) {
            System.err.println("Exception: " + e.getLocalizedMessage());
            e.printStackTrace();
        }
    }
}
