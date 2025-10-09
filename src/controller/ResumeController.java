package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ResumeDAO;
import model.UserResume;

@WebServlet("/ResumeController")
public class ResumeController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String fullName = request.getParameter("fullName").trim();
        String email = request.getParameter("email").trim();
        String phone = request.getParameter("phone").trim();
        String summary = request.getParameter("summary").trim();
        String template = request.getParameter("template").trim();

        // Basic validation
        if (fullName.isEmpty() || email.isEmpty() || phone.isEmpty() || template.isEmpty()) {
            request.setAttribute("errorMessage", "Please fill in all required fields.");
            request.getRequestDispatcher("error.jsp").forward(request, response);
            return;
        }

        // Save to database via DAO
        UserResume resume = new UserResume(fullName, email, phone, summary);
        try {
            ResumeDAO.save(resume);
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Database error: " + e.getMessage());
            request.getRequestDispatcher("error.jsp").forward(request, response);
            return;
        }

        // Forward to selected template
        request.setAttribute("fullName", fullName);
        request.setAttribute("email", email);
        request.setAttribute("phone", phone);
        request.setAttribute("summary", summary);

        String templatePage = "templates/" + template + ".jsp";
        request.getRequestDispatcher(templatePage).forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("index.jsp");
    }
}
