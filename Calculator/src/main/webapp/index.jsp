<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Simple Calculator</title>
    <style>
        body {
            font-family: "Times New Roman", Times, serif; /* Phông chữ có chân giống trong ảnh */
            margin: 20px;
            color: #000;
        }

        h1 {
            font-size: 2.5em;
            margin-bottom: 20px;
        }

        /* Tạo khung viền bao quanh */
        fieldset {
            border: 1px solid #888;
            padding: 15px 20px 20px 15px;
            width: 450px; /* Độ rộng tương đối giống trong ảnh */
        }

        /* Chữ nằm trên đường viền */
        legend {
            font-size: 1.2em;
            padding: 0 5px;
        }

        /* Căn chỉnh từng dòng nhập liệu */
        .form-row {
            display: flex;
            align-items: center;
            margin-bottom: 8px;
        }

        /* Cố định độ rộng của nhãn để các ô input thẳng hàng */
        .form-row label {
            width: 140px;
            font-size: 1.1em;
        }

        /* Định dạng ô nhập text và ô chọn */
        .form-row input[type="text"],
        .form-row select {
            width: 160px;
            padding: 3px 5px;
            font-family: Arial, sans-serif;
            border: 1px solid #ccc;
            border-radius: 2px;
        }

        /* Căn chỉnh nút bấm cho thẳng hàng với ô input */
        .button-row {
            margin-top: 5px;
            padding-left: 140px; /* Bằng với độ rộng của label */
        }

        /* Định dạng nút Calculate */
        button {
            padding: 3px 12px;
            font-family: Arial, sans-serif;
            font-size: 0.9em;
            border: 1px solid #aaa;
            border-radius: 4px;
            background-color: #f8f8f8;
            cursor: pointer;
        }

        button:active {
            background-color: #e0e0e0;
        }
    </style>
</head>
<body>
<h1>Simple Calculator</h1>

<form action="calculate" method="post">
    <fieldset>
        <legend>Calculator</legend>

        <div class="form-row">
            <label for="first-operand">First operand:</label>
            <input type="text" name="first-operand" id="first-operand" value="231">
        </div>

        <div class="form-row">
            <label for="operator">Operator:</label>
            <select name="operator" id="operator">
                <option value="addition" selected>Addition</option>
                <option value="subtraction">Subtraction</option>
                <option value="multiplication">Multiplication</option>
                <option value="division">Division</option>
            </select>
        </div>

        <div class="form-row">
            <label for="second-operand">Second operand:</label>
            <input type="text" name="second-operand" id="second-operand" value="234">
        </div>

        <div class="button-row">
            <button type="submit">Calculate</button>
        </div>
    </fieldset>
</form>
</body>
</html>