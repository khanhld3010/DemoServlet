<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Result</title>
    <style>
        body {
            font-family: "Times New Roman", Times, serif;
            margin: 20px;
            color: #000;
        }

        h1 {
            font-size: 2.5em;
            margin-bottom: 20px;
        }

        .result-container {
            border: 1px solid #888;
            padding: 20px;
            width: 450px;
        }

        .result-text {
            font-size: 1.2em;
        }
    </style>
</head>
<body>
<h1>Simple Calculator</h1>

<div class="result-container">
    <h2>Result:</h2>
    <p class="result-text">${result}</p>
</div>

</body>
</html>