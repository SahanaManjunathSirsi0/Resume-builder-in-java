<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Resume Builder</title>
</head>
<body>
    <h2>Create Your Resume</h2>
    <form action="ResumeController" method="post">
        Name: <input type="text" name="fullName"/><br/>
        Email: <input type="text" name="email"/><br/>
        Phone: <input type="text" name="phone"/><br/>
        Summary: <textarea name="summary"></textarea><br/>
        Choose Template:
        <select name="template">
            <option value="template1">Template 1</option>
            <option value="template2">Template 2</option>
            <option value="template3">Template 3</option>
        </select>
        <input type="submit" value="Generate Resume"/>
    </form>
</body>
</html>
