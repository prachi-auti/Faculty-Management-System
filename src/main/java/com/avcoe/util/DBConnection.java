package com.avcoe.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
 
    private static Connection con;

    public static Connection getConnection() {
        if (con == null) {
            try {
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/faculty?useSSL=false", "root", "root");
                System.out.println("Database connected successfully.");
            } catch (SQLException e) {
                e.printStackTrace();
                System.out.println("Failed to connect to the database.");
            }
        }
        return con;
    }

    public static void closeConnection() {
        try {
            if (con != null && !con.isClosed()) {
                con.close();
                System.out.println("Database connection closed.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
