<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calculator</title>
    <style>
        body {
            font-family: poppins,Arial, sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            background-color: #f0f0f0;

        }
        form {
            width: 300px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        label {
            display: block;
            margin-bottom: 10px;
            margin-top: 5px;
        }
        input[type="number"] {
            width: calc(100% - 20px);
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        button[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            border: none;
            border-radius: 4px;
            margin-top: 5px;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
            font-family: poppins;
        }
        button[type="submit"]:hover {
            background-color: #0056b3;
        }
        .result {
            width: 200px;

            position: absolute;
            bottom: 5%;
            right: 3%;
            background-color: #007bff; /* Change background color to blue */
            color: #fff; /* Text color to white */
            padding: 20px; /* Add padding for better spacing */
            border-radius: 10px; /* Increase border radius for smoother edges */
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2); /* Add shadow for depth */
            text-align: start; /* Center align text */
            font-family: "Poppins", Arial, sans-serif; /* Use Poppins font */
        }

        .result h5, .result h3 {
            margin: 5px 0; /* Adjust margins for better spacing */
        }
    </style>
</head>
<body>
<form method="POST" action="/calculate">
    <label for="num1">First Number:</label>
    <input type="number" id="num1" name="num1" required>
    <br>
    <label for="num2">Second Number:</label>
    <input type="number" id="num2" name="num2" required>
    <br>


    <div style="display: flex; justify-content: space-between">
        <div style="display: flex; align-items: center">
            <label for="num2">Add </label>
            <input type="radio" name="op" value="+" required>
        </div>
        <div style="display: flex; align-items: center">
            <label for="num2">Subtract</label>
            <input type="radio" name="op" value="-">
        </div>
    </div>


    <button type="submit">Submit</button>


</form>
<div class="result">
    <h5>Num 1: ${num1}</h5>
    <h5>Num 2: ${num2}</h5>
    <h3>Result:  ${result}</h3>
</div>
</body>
</html>
