package Utilities;

import java.util.Date;

/**
 *
 * @author coad4u4ever
 */
public class DateMaker {

    public static String dateAndTimeMaking() {
        java.util.Date dt = new java.util.Date();
        java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String currentTime = sdf.format(dt);
        return currentTime;
    }
}
