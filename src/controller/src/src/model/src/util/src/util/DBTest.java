package util;

import java.sql.Connection;

/**
 * DBTest is used to test database connectivity.
 */
public class DBTest {
    public static void main(String[] args) {
        try {
            Connection conn = DBUtil.getConnection();
            if (conn != null) {
                System.out.println("✅ Connection successful!");
                conn.close();
            }
        } catch (Exception e) {
            System.out.println("❌ Connection failed: " + e.getMessage());
        }
    }
}
