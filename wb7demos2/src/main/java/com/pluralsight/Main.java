package com.pluralsight;

import java.sql.*;

public class Main {
    public static void main(String[] args) {

        try{

            // load the MySQL Driver
            Class.forName("com.mysql.cj.jdbc.Driver");


            // 1. open a connection to the database
            // use the database URL to point to the correct database
            Connection connection;
            connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/sakila",
                    "root",
                    "yearup");

            int country_id = 103;

            PreparedStatement pstatement = connection.prepareStatement("select * from sakila.city where country_id = ?;");
            pstatement.setInt(1, country_id);


            ResultSet results = pstatement.executeQuery();

            // process the results
            while (results.next()) {
                String city = results.getString("city");
                System.out.println(city);
            }

        // 3. Close the connection
            connection.close();

        } catch (ClassNotFoundException e) {
            System.out.println("There was an issue finding a class:");
            e.printStackTrace();

        } catch (SQLException e) {
            System.out.println("There was an SQL issue:");
            e.printStackTrace();
        }


    }
}