package project;

import java.sql.*;

public class ConnectionProvider {
    
    public static Connection getCon()
    {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/bloodbank?" + "user=root");
            return con;
        } 
        catch (ClassNotFoundException | SQLException e) 
        {
            e.printStackTrace();
            return null;
        }
            
    }
    
}
