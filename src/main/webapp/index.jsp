<!DOCTYPE html>
<html>

<head>
    <title>GANA TECH APP VERSION-4000</title>
    <style>
        h1 {
            color: green;
            font-size: 40px;
            text-align: center;
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

