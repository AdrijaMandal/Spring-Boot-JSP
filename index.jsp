<html>
<head>
    <title>Order Tracking</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #121212;
            color: #e0e0e0;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            height: 100vh;
            justify-content: space-between;
        }

        .container {
            text-align: center;
            background: #1e1e1e;
            padding: 60px 80px;
            border-radius: 12px;
            box-shadow: 0 0 25px rgba(0, 0, 0, 0.5);
            margin: auto;
        }

        h2 {
            color: #ffffff;
            margin-bottom: 30px;
        }

        a.button {
            display: inline-block;
            margin: 10px 15px;
            text-decoration: none;
            background-color: #3498db;
            color: white;
            padding: 12px 24px;
            border-radius: 6px;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        a.button:hover {
            background-color: #2980b9;
        }

        footer {
            text-align: center;
            padding: 20px 10px;
            font-size: 14px;
            color: #aaaaaa;
            background-color: #1a1a1a;
            border-top: 1px solid #333333;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Welcome to Order Tracking System</h2>
    <a href="/orders" class="button">View Orders</a>
    <a href="/add" class="button">Add Order</a>
</div>

<footer>
    Created by Sahid Ankan Layek. All rights reserved.
</footer>

</body>
</html>
