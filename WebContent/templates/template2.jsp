<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        body {
            font-family: 'Verdana', Geneva, Tahoma, sans-serif;
            background-color: #fff0e6;
            color: #333;
            margin: 20px;
            padding: 20px;
            display: flex;
            justify-content: center;
        }
        .resume {
            background-color: #fff;
            border: 1px solid #ddd;
            padding: 30px;
            max-width: 700px;
            margin: auto;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .header {
            background-color: #ff6600;
            color: #fff;
            padding: 25px;
            border-radius: 8px 8px 0 0;
            text-align: center;
        }
        .name {
            font-size: 2.5em;
            font-weight: bold;
        }
        .contact {
            font-size: 1em;
            margin-top: 5px;
        }
        .contact a {
            color: #fff;
            text-decoration: none;
        }
        .section {
            padding: 15px 0;
            border-bottom: 1px solid #eee;
        }
        .section:last-child {
            border-bottom: none;
        }
        .section-title {
            font-size: 1.5em;
            font-weight: bold;
            color: #cc3300;
            margin-bottom: 10px;
            border-bottom: 2px solid #cc3300;
            padding-bottom: 5px;
        }
        .summary p {
            line-height: 1.6;
            color: #555;
        }
    </style>
    <title>Professional Resume</title>
</head>
<body>
<div class="resume">
    <div class="header">
        <h1 class="name">${fullName}</h1>
        <p class="contact">
            Email: <a href="mailto:${email}">${email}</a> |
            Phone: ${phone}
        </p>
    </div>

    <div class="section summary">
        <h2 class="section-title">Summary</h2>
        <p>${summary}</p>
    </div>
</div>
</body>
</html>
