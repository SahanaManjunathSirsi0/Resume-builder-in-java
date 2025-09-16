src/dao/ResumeDAO.java

  package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import util.DBUtil;
import model.UserResume;

/**
 * ResumeDAO handles database operations for UserResume.
 */
public class ResumeDAO {

    /**
     * Saves a UserResume object into the database.
     * @param resume The UserResume object to save
     * @return true if saved successfully, false otherwise
     */
    public boolean saveResume(UserResume resume) {
        String sql = "INSERT INTO resumes (name, email, phone, education, skills, experience) VALUES (?, ?, ?, ?, ?, ?)";
        
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, resume.getName());
            ps.setString(2, resume.getEmail());
            ps.setString(3, resume.getPhone());
            ps.setString(4, resume.getEducation());
            ps.setString(5, resume.getSkills());
            ps.setString(6, resume.getExperience());

            ps.executeUpdate();
            return true;

        } catch (SQLException e) {
            System.err.println("Error saving resume: " + e.getMessage());
            return false;
        }
    }
}
