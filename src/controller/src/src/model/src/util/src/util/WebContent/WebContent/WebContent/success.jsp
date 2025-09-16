<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.UserResume" %>
<%
    UserResume resume = (UserResume) request.getAttribute("resume");
%>
<html>
<head>
    <title>Resume Generated</title>
</head>
<body>
<h2>✅ Resume Generated Successfully!</h2>
<p><strong>Name:</strong> <%= resume.getName() %></p>
<p><strong>Email:</strong> <%= resume.getEmail() %></p>
<p><strong>Phone:</strong> <%= resume.getPhone() %></p>
<p><strong>Education:</strong> <%= resume.getEducation() %></p>
<p><strong>Skills:</strong> <%= resume.getSkills() %></p>
<p><strong>Experience:</strong> <%= resume.getExperience() %></p>
</body>
</html>
