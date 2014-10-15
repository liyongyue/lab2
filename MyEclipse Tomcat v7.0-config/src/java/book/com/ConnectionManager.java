package book.com;




import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ConnectionManager {

    private static final String DRIVER_NAME = "com.mysql.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost/bookdb";

    static {
        try {
            Class.forName(DRIVER_NAME).newInstance();
        } catch (ClassNotFoundException | InstantiationException | IllegalAccessException e) {
        }
    }

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL,"root","");
    }
    
     public static void close(Connection conn, Statement stmt, ResultSet rs) {
        try {
            if (rs != null) {
                rs.close();
            }
        } catch (SQLException ex) {
            Logger.getLogger(ConnectionManager.class.getName()).log(Level.WARNING,
                    "Unable to close ResultSet", ex);
        }
        try {
            if (stmt != null) {
                stmt.close();
            }
        } catch (SQLException ex) {
            Logger.getLogger(ConnectionManager.class.getName()).log(Level.WARNING,
                    "Unable to close Statement", ex);
        }
        try {
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException ex) {
            Logger.getLogger(ConnectionManager.class.getName()).log(Level.WARNING,
                    "Unable to close Connection", ex);
        }
    }
}

