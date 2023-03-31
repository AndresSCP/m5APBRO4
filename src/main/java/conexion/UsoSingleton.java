package conexion;

import java.sql.*;

public class UsoSingleton {
    public static void main(String[] args) {}

    // Propiedades
    private static Connection conn = null;
   
    // Constructor
    private UsoSingleton(){
 
 String url = "jdbc:mysql://localhost:3306/test";
 String driver = "com.mysql.jdbc.Driver";
 String usuario = "usuario";
 String password = "password";
  
 try{
     Class.forName(driver);
     conn = DriverManager.getConnection(url, usuario, password);
 }
 catch(ClassNotFoundException | SQLException e){
     e.printStackTrace();
 }
    } // Fin constructor
 
    // Métodos
    public static Connection getConnection(){
  
 if (conn == null){
     new UsoSingleton();
 }
  
 return conn;
    } // Fin getConnection
}



