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
            max-width: 600px;
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

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }

        th {
            background-color: #4CAF50;
            color: white;
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
        <button onclick="clearResults()">Clear Results</button>

        <p id="result">Result: </p>

        <table id="resultsTable">
            <thead>
                <tr>
                    <th>Operation</th>
                    <th>Result</th>
                </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
    </div>

    <p id="datetime"></p>

    <script>
        function add() {
            var num1 = parseFloat(document.getElementById("num1").value);
            var num2 = parseFloat(document.getElementById("num2").value);
            var result = num1 + num2;
            document.getElementById("result").innerText = "Result: " + result;
            addToResultsTable("Addition", result);
        }

        function subtract() {
            var num1 = parseFloat(document.getElementById("num1").value);
            var num2 = parseFloat(document.getElementById("num2").value);
            var result = num1 - num2;
            document.getElementById("result").innerText = "Result: " + result;
            addToResultsTable("Subtraction", result);
        }

        function multiply() {
            var num1 = parseFloat(document.getElementById("num1").value);
            var num2 = parseFloat(document.getElementById("num2").value);
            var result = num1 * num2;
            document.getElementById("result").innerText = "Result: " + result;
            addToResultsTable("Multiplication", result);
        }

        function divide() {
            var num1 = parseFloat(document.getElementById("num1").value);
            var num2 = parseFloat(document.getElementById("num2").value);
            if (num2 !== 0) {
                var result = num1 / num2;
                document.getElementById("result").innerText = "Result: " + result;
                addToResultsTable("Division", result);
            } else {
                document.getElementById("result").innerText = "Cannot divide by zero!";
            }
        }

        function clearResults() {
            document.getElementById("result").innerText = "Result: ";
            var tableBody = document.getElementById("resultsTable").getElementsByTagName("tbody")[0];
            tableBody.innerHTML = "";
        }

        function addToResultsTable(operation, result) {
            var tableBody = document.getElementById("resultsTable").getElementsByTagName("tbody")[0];
            var newRow = tableBody.insertRow();
            var cell1 = newRow.insertCell(0);
            var cell2 = newRow.insertCell(1);
            cell1.innerText = operation;
            cell2.innerText = result;
        }

        function updateTime() {
            var currentDate = new Date();
            var dateTimeElement = document.getElementById("datetime");
            dateTimeElement.innerText = "Current Date & Time: " + currentDate.toLocaleString();
        }

        // Update time every second
        setInterval(updateTime, 1000);
        updateTime(); // Initial call to display time
    </script>
</body>

</html>
