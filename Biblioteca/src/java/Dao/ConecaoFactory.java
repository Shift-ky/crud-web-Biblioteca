/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;
import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author robsonPaiva
 */
public class ConecaoFactory {
    
    Connection connection = null;
    
    public Connection conexaoBd(){
        String url = "jdbc:mysql://localhost:3306/biblioteca?user=root&password=";
        try {
           connection = (Connection) DriverManager.getConnection(url);
        } catch (SQLException e) {
        }
        
        return connection;
    }
    
}
