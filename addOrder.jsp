<html>
<head>
    <title>Add Order</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #121212;
            color: #e0e0e0;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
        }

        .container {
            background-color: #1e1e1e;
            padding: 40px 50px;
            width: 100%;
            max-width: 480px;
            border-radius: 14px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.5);
            text-align: center;
        }

        h2 {
            color: #ffffff;
            margin-bottom: 30px;
            font-size: 26px;
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 18px;
        }

        label {
            text-align: left;
            font-size: 14px;
            font-weight: 600;
            margin-bottom: 5px;
            color: #bdbdbd;
        }

        input[type="text"] {
            padding: 12px;
            background-color: #2c2c2c;
            color: #ffffff;
            border: 1px solid #444;
            border-radius: 6px;
            font-size: 15px;
        }

        input[type="submit"] {
            background-color: #3498db;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 6px;
            font-weight: bold;
            font-size: 15px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #2980b9;
        }

        a.button {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            background-color: #7f8c8d;
            color: white;
            padding: 10px 18px;
            border-radius: 6px;
            font-weight: bold;
            font-size: 14px;
            transition: background-color 0.3s ease;
        }

        a.button:hover {
            background-color: #636e72;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Add New Order</h2>

    <form action="/save" method="post">
        <div>
            <label for="product">Product</label>
            <input type="text" id="product" name="product" required />
        </div>

        <div>
            <label for="customer">Customer</label>
            <input type="text" id="customer" name="customer" required />
        </div>

        <div>
            <label for="status">Status</label>
            <input type="text" id="status" name="status" required />
        </div>

        <input type="submit" value="Save Order" />
    </form>

    <a href="/orders" class="button">Back to Orders</a>
</div>

</body>
</html>
