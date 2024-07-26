package com.demo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class connect {
	
	private static final String JDBC_URL = "jdbc:mysql://localhost:3306/fullstck_schema";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "Test@123";

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
    }

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
