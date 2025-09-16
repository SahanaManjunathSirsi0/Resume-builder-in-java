<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            color: #333;
            margin: 20px;
        }
        .resume {
            max-width: 700px;
            margin: auto;
            background-color: #fff;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 3px 10px rgba(0,0,0,0.2);
        }
        .header {
            text-align: center;
            border-bottom: 2px solid #007bff;
            margin-bottom: 20px;
            padding-bottom: 10px;
        }
        .header h1 {
            margin: 0;
            color: #007bff;
        }
        .section-title {
            font-size: 1.5em;
            margin-top: 15px;
            margin-bottom: 10px;
            color: #28a745;
            border-bottom: 1px solid #28a745;
            padding-bottom: 3px;
        }
        .section p {
            line-height: 1.6;
        }
    </style>
    <title>Professional Resume - Template 2</title>
</head>
<body>
<div class="resume">
    <div class="header">
        <h1>${resume.name}</h1>
        <p>Email: <a href="mailto:${resume.email}">${resume.email}</a> | Phone: ${resume.phone}</p>
    </div>

    <div class="section">
        <h2 class="section-title">Education</h2>
        <p>${resume.education}</p>
    </div>

    <div class="section">
        <h2 class="section-title">Skills</h2>
        <p>${resume.skills}</p>
    </div>

    <div class="section">
        <h2 class="section-title">Experience</h2>
        <p>${resume.experience}</p>
    </div>
</div>
</body>
</html>
