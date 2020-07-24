package models;

import controllers.Config;
import models.Ads;

public class DaoFactory {
    private static Ads adsDao;
    private static final Config config = new Config();

    public static Ads getAdsDao() {
        if (adsDao == null) {
            adsDao = new MySQLAdsDao(config);
        }
        return adsDao;
    }
}
