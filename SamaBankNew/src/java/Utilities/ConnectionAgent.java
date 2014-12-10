package Utilities;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 *
 * @author coad4u4ever
 */
public class ConnectionAgent {
    /*
     public static Connection getConnection() {
     Connection con = null;
     try {
     Context ctx = null;
     ctx = new InitialContext();
     DataSource ds = (DataSource) ctx.lookup("jdbc/samabank");
     con = ds.getConnection();
     } catch (NamingException | SQLException ex) {
     System.out.println(ex);
     }
     return con;
     }
    
     */

    // Values of the certain database
    public static final String URL = "jdbc:mysql://128.199.190.130:3306/samabank";
    public static final String DRIVER = "com.mysql.jdbc.Driver";
    public static final String USER = "samabank";
    public static final String PASSWORD = "samabank";

    // Get a connection of the database
    public static Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName(DRIVER);
            conn = DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(ConnectionAgent.class.getName()).log(Level.SEVERE, null, ex);
        }

        return conn;
    }
}
