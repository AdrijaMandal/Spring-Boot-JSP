<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>All Orders</title>
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
            text-align: center;
            max-width: 1000px;
            width: 100%;
            padding: 40px;
            background-color: #1e1e1e;
            border-radius: 12px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.3);
        }

        h2 {
            margin-bottom: 30px;
            color: #ffffff;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 30px;
            border-radius: 8px;
            overflow: hidden;
        }

        th, td {
            padding: 14px 18px;
            border-bottom: 1px solid #333333;
            text-align: left;
        }

        th {
            background-color: #2c3e50;
            color: #ffffff;
        }

        tr:hover {
            background-color: #2a2a2a;
        }

        input[type="text"] {
            background-color: #2a2a2a;
            color: #ffffff;
            border: 1px solid #555;
            border-radius: 6px;
            padding: 8px;
            width: 90%;
        }

        a.button, button {
            display: inline-block;
            text-decoration: none;
            background-color: #3498db;
            color: white;
            padding: 10px 18px;
            border-radius: 6px;
            font-weight: 600;
            border: none;
            cursor: pointer;
            transition: all 0.3s ease;
            margin: 2px;
        }

        a.button:hover, button:hover {
            background-color: #2980b9;
        }

        .button-danger {
            background-color: #e74c3c;
        }

        .button-danger:hover {
            background-color: #c0392b;
        }

        .add-btn {
            margin-top: 20px;
        }

        form {
            margin: 0;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>All Orders</h2>

    <table>
        <tr>
            <th>ID</th>
            <th>Product</th>
            <th>Customer</th>
            <th>Status</th>
            <th>Actions</th>
        </tr>

        <c:forEach var="order" items="${orders}">
            <c:choose>
                <c:when test="${param.editId == order.id}">
                    <form method="post" action="/update">
                        <input type="hidden" name="id" value="${order.id}" />
                        <tr>
                            <td>${order.id}</td>
                            <td><input type="text" name="product" value="${order.product}" /></td>
                            <td><input type="text" name="customer" value="${order.customer}" /></td>
                            <td><input type="text" name="status" value="${order.status}" /></td>
                            <td>
                                <button type="submit">Save</button>
                                <a href="/orders" class="button">Cancel</a>
                            </td>
                        </tr>
                    </form>
                </c:when>
                <c:otherwise>
                    <tr>
                        <td>${order.id}</td>
                        <td>${order.product}</td>
                        <td>${order.customer}</td>
                        <td>${order.status}</td>
                        <td>
                            <a href="/orders?editId=${order.id}" class="button">Update</a>
                            <a href="/delete/${order.id}" class="button button-danger">Delete</a>
                        </td>
                    </tr>
                </c:otherwise>
            </c:choose>
        </c:forEach>
    </table>

    <a href="/add" class="button add-btn">Add New Order</a>
</div>

</body>
</html>
