package MainPackage;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBclass {

    public static Connection connect() {
        Connection con = null;
        try {
            //Class.forName("com.mysql.jdbc.Driver");
            Class.forName("com.mysql.cj.jdbc.Driver");

            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/library", "root", "");

        } catch (Exception e) {
            //System.out.println(e);
        }
        return con;
    }
}
