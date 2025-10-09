package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.UserResume;
import util.DBUtil;

public class ResumeDAO {

    public static void save(UserResume resume) throws SQLException {
        String sql = "INSERT INTO resumes (name, email, phone, summary) VALUES (?, ?, ?, ?)";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, resume.getName());
            ps.setString(2, resume.getEmail());
            ps.setString(3, resume.getPhone());
            ps.setString(4, resume.getSummary());

            ps.executeUpdate();

        } catch (SQLException e) {
            System.err.println("Error saving resume: " + e.getMessage());
            throw e; // Re-throw for controller to handle
        }
    }
}
