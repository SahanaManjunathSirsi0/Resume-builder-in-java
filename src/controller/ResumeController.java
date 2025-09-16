package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import model.UserResume;
import dao.ResumeDAO;

/**
 * ResumeController handles requests from the Resume Builder form
 * and forwards them to the appropriate JSP pages.
 */
@WebServlet("/ResumeController")
public class ResumeController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private ResumeDAO resumeDAO;

    @Override
    public void init() throws ServletException {
        resumeDAO = new ResumeDAO();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Collect data from the form
        String fullName = request.getParameter("fullName");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String education = request.getParameter("education");
        String skills = request.getParameter("skills");
        String experience = request.getParameter("experience");

        // Create UserResume object
        UserResume resume = new UserResume(fullName, email, phone, education, skills, experience);

        // Save resume to database
        boolean isSaved = resumeDAO.saveResume(resume);

        if (isSaved) {
            request.setAttribute("resume", resume);
            request.getRequestDispatcher("success.jsp").forward(request, response);
        } else {
            response.sendRedirect("error.jsp");
        }
    }
}
