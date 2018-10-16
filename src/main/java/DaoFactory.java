

public class DaoFactory {
    private static Ads adsDao;
    Config config = new Config();


    public static Ads getAdsDao() {
        if (adsDao == null) {
            adsDao = new ListAdsDao();
        }
        return adsDao;
    }
}
