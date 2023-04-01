package conexionDAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnSingleton {
    private static ConnSingleton instance = new ConnSingleton();
    private static final String URL = "jdbc:mysql://localhost:3306/m5_abpro_4";
    private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String USER = "root";
    private static final String PASSWORD = "12345";

    private Connection connection;

    private ConnSingleton() {
        try {
            Class.forName(DRIVER);
            this.connection = DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException("Error al conectar a la base de datos.", e);
        }
    }

    public static Connection conectar() {
        try {
            if (instance.connection == null || instance.connection.isClosed()) {
                // Si la conexión está cerrada o nunca se ha creado, crear una nueva conexión
                Class.forName(DRIVER);
                instance.connection = DriverManager.getConnection(URL, USER, PASSWORD);
            }
        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException("Error al conectar a la base de datos.", e);
        }
        return instance.connection;
    }

    public static void cerrar() {
        if (instance != null && instance.connection != null) {
            try {
                instance.connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}

