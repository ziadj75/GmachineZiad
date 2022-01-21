package connexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connexion {

    private static String login = "i9vk72wn5y7besk1";
    private static String password = "rbav8kht9fhk37o5";
    private static String url = "jdbc:mysql://i9vk72wn5y7besk1:rbav8kht9fhk37o5@ble5mmo2o5v9oouq.cbetxkdyhwsb.us-east-1.rds.amazonaws.com:3306/lvyie34bxg2l9rjs";
    private Connection connection = null;
    private static Connexion instane;

    private Connexion() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(url, login, password);
        } catch (ClassNotFoundException e) {
            System.out.println(url);
            System.out.println("Driver introvable");
        } catch (SQLException e) {
            System.out.println("Connexion errror");
            System.out.println(e.getMessage());
        }
    }

    public Connection getConnection() {
        return connection;
    }

    public static Connexion getInstane() {
        if (instane == null) {
            instane = new Connexion();
        }
        return instane;
    }

}