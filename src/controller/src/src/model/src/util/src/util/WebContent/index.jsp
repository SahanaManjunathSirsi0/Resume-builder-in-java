<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Resume Builder</title>
</head>
<body>
<h2>Resume Builder Form</h2>
<form action="ResumeController" method="post">
    Name: <input type="text" name="fullName"/><br/>
    Email: <input type="text" name="email"/><br/>
    Phone: <input type="text" name="phone"/><br/>
    Education: <input type="text" name="education"/><br/>
    Skills: <input type="text" name="skills"/><br/>
    Experience: <textarea name="experience"></textarea><br/>
    <input type="submit" value="Generate Resume"/>
</form>
</body>
</html>
