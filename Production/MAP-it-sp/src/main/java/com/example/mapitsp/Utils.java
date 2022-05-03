package com.example.mapitsp;

import java.sql.Connection;
import java.sql.DriverManager;

public class Utils {

    private static final String jdbcURL = "jdbc:mysql://127.0.0.1:3306/map-it";
    private static final String jdbcUsername = "root";
    private static final String jdbcPassword = "root";

    public static Connection getConnection(){
        Connection connection = null;
        try{
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
            System.out.println("Database is connected");
        }catch(Exception e){
            e.printStackTrace();
            System.out.println("NO DATABASE CONNECTION");
        }
        return connection;
    }

}