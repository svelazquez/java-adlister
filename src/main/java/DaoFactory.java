
import com.mysql.cj.jdbc.Driver;
import java.sql.*;

public class DaoFactory {
    private static Ads adsDao;
    Config config = new Config();


    Connection connection;

    {
        try {
            connection = DriverManager.getConnection(
                        config.getUrl(),
                        config.getTitle(),
                        config.getDescription()
                );
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    Statement statement;

    {
        try {
            statement = connection.createStatement();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    public static Ads getAdsDao() {
        if (adsDao == null) {
            adsDao = new ListAdsDao();
        }
        return adsDao;
    }
}
