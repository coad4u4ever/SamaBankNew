package Utilities;

/**
 *
 * @author coad4u4ever
 */
public class Checker {

    public static boolean isInteger(String test) {
        try {
            Integer.parseInt(test);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public static boolean isDouble(String test) {
        try {
            Double.parseDouble(test);
            return true;
        } catch (Exception e) {
            return false;
        }
    }
}
