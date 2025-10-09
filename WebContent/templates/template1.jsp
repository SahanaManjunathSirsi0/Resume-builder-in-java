<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #e6f7ff;
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
            display: grid;
            grid-template-columns: 1fr;
            gap: 20px;
        }
        .header {
            background-color: #007bff;
            color: #fff;
            padding: 25px;
            border-radius: 8px 8px 0 0;
            text-align: center;
        }
        .name {
            font-size: 2.8em;
            font-weight: bold;
            margin-bottom: 5px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
        }
        .contact {
            font-size: 1.1em;
            margin-bottom: 10px;
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
            font-size: 1.6em;
            font-weight: bold;
            color: #28a745;
            margin-bottom: 10px;
            border-bottom: 2px solid #28a745;
            padding-bottom: 5px;
        }
        .summary p {
            line-height: 1.7;
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
