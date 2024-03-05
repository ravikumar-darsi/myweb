<!DOCTYPE html>
<html>

<head>
    <title>GANA TECH APP VERSION-4000</title>
    <style>
        body {
            background-color: #f4f4f4;
            font-family: 'Arial', sans-serif;
            text-align: center;
        }

        h1 {
            color: #4CAF50;
            font-size: 40px;
        }

        div {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin: 20px auto;
            max-width: 400px;
        }

        label {
            display: block;
            margin: 10px 0;
            color: #333;
        }

        input {
            width: 100%;
            padding: 8px;
            margin: 6px 0;
            box-sizing: border-box;
        }

        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            margin: 5px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }

        #result {
            color: #333;
            font-weight: bold;
            margin-top: 10px;
        }
    </style>
</head>

<body>
    <h1>GANA TECH APP VERSION-4000</h1>

    <div>
        <label for="num1">Enter Number 1: </label>
        <input type="text" id="num1">

        <label for="num2">Enter Number 2: </label>
        <input type="text" id="num2">

        <button onclick="add()">Add</button>
        <button onclick="subtract()">Subtract</button>
        <button onclick="multiply()">Multiply</button>
        <button onclick="divide()">Divide</button>

        <p id="result">Result: </p>
    </div>

    <script>
        function add() {
            var num1 = parseFloat(document.getElementById("num1").value);
            var num2 = parseFloat(document.getElementById("num2").value);
            var result = num1 + num2;
            document.getElementById("result").innerText = "Result: " + result;
        }

        function subtract() {
            var num1 = parseFloat(document.getElementById("num1").value);
            var num2 = parseFloat(document.getElementById("num2").value);
            var result = num1 - num2;
            document.getElementById("result").innerText = "Result: " + result;
        }

        function multiply() {
            var num1 = parseFloat(document.getElementById("num1").value);
            var num2 = parseFloat(document.getElementById("num2").value);
            var result = num1 * num2;
            document.getElementById("result").innerText = "Result: " + result;
        }

        function divide() {
            var num1 = parseFloat(document.getElementById("num1").value);
            var num2 = parseFloat(document.getElementById("num2").value);
            if (num2 !== 0) {
                var result = num1 / num2;
                document.getElementById("result").innerText = "Result: " + result;
            } else {
                document.getElementById("result").innerText = "Cannot divide by zero!";
            }
        }
    </script>
</body>

</html>
