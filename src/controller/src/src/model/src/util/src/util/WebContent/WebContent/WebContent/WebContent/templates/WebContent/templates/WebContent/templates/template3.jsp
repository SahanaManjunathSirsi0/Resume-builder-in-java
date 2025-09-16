<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        body {
            font-family: 'Verdana', sans-serif;
            background-color: #fffbe6;
            color: #333;
            margin: 20px;
        }
        .resume {
            max-width: 700px;
            margin: auto;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.15);
        }
        .header {
            text-align: center;
            background-color: #ff6600;
            color: #fff;
            padding: 20px;
            border-radius: 12px 12px 0 0;
        }
        .header h1 {
            margin: 0;
            font-size: 2.5em;
        }
        .section {
            margin-top: 20px;
        }
        .section-title {
            font-size: 1.5em;
            color: #ff6600;
            border-bottom: 2px solid #ff6600;
            padding-bottom: 3px;
            margin-bottom: 10px;
        }
        .section p {
            line-height: 1.6;
        }
    </style>
    <title>Professional Resume - Template 3</title>
</head>
<body>
<div class="resume">
    <div class="header">
        <h1>${resume.name}</h1>
        <p>Email: <a href="mailto:${resume.email}">${resume.email}</a> | Phone: ${resume.phone}</p>
    </div>

    <div class="section">
        <h2 class="section-title">Summary</h2>
        <p>${resume.experience}</p>
    </div>

    <div class="section">
        <h2 class="section-title">Education</h2>
        <p>${resume.education}</p>
    </div>

    <div class="section">
        <h2 class="section-title">Skills</h2>
        <p>${resume.skills}</p>
    </div>
</div>
</body>
</html>
