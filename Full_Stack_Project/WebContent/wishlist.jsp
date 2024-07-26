<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="java.util.List" %>
<%@ page import="com.demo.Item1" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Shopping Cart</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
            background-color: #f9f9f9; /* Adjust as per your design */
        }
        .products {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
        }
        .product {
            width: 300px; /* Adjust width as needed */
            margin: 10px; /* Adjust margin as needed */
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
            position: relative;
        }
        .product img {
            max-width: 100%;
            height: auto;
        }
        .product .name {
            font-weight: bold;
            margin-top: 10px;
        }
        .product .price {
            font-size: 18px;
            color: green;
            margin-top: 5px;
        }
        .product .description {
            margin-top: 5px;
            color: gray;
        }
        .remove-button, .buy-button {
            position: absolute;
            right: 5px;
            background-color: #f44336;
            color: white;
            border: none;
            padding: 5px 10px;
            border-radius: 5px;
            cursor: pointer;
        }
        .remove-button {
            top: 5px;
        }
        .buy-button {
            bottom: 5px;
            background-color: #4CAF50; /* Green */
        }
        .continue-shopping {
            position: fixed;
            bottom: 20px;
            left: 50%;
            transform: translateX(-50%);
            background: linear-gradient(to right, #f28baf, #bfa2f2, #8bc4f2); /* Adjust gradient colors */
            color: #fff;
            padding: 10px 20px;
            border-radius: 5px;
            text-align: center;
            width: 200px;
            height: 60px; /* Adjust height as needed */
            display: flex;
            justify-content: center;
            align-items: center;
            font-weight: bold;
            text-transform: uppercase;
            text-decoration: none;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            z-index: 1; /* Ensure it's above other content */
            overflow: hidden;
        }
        .continue-shopping:hover {
            background-size: 200% 100%;
            transition: background-position 0.5s;
        }
        .continue-shopping span {
            display: block;
            transition: transform 0.3s ease-out;
        }
        .continue-shopping:hover span {
            transform: translateX(100%);
        }
    </style>
</head>
<body>
    <h1>Your Wishlist</h1>
    <div class="products">
        <% HttpSession session1 = request.getSession();
           List<Item1> wishlistItems = (List<Item1>) session1.getAttribute("wishlistItems");
           if (wishlistItems != null && !wishlistItems.isEmpty()) {
               for (Item1 item : wishlistItems) {
        %>
        <div class="product">
            <img src="<%= item.getImageUrl() %>" alt="Item Image">
            <div class="name"><%= item.getItemName() %></div>
            <div class="price">₹ <%= item.getItemPrice() %></div>
            <div class="description"><%= item.getDescription() %></div>
            <form action="RemoveFromWishlistServlet" method="post">
                <input type="hidden" name="itemName" value="<%= item.getItemName() %>">
                <input type="hidden" name="itemPrice" value="<%= item.getItemPrice() %>">
                <input type="hidden" name="imageUrl" value="<%= item.getImageUrl() %>">
                <input type="hidden" name="description" value="<%= item.getDescription() %>">
                <button type="submit" class="remove-button">Remove from Wishlist</button>
            </form>
            <form action="payment2.jsp" method="post">
                <input type="hidden" name="itemName" value="<%= item.getItemName() %>">
                <input type="hidden" name="itemPrice" value="<%= item.getItemPrice() %>">
                <input type="hidden" name="imageUrl" value="<%= item.getImageUrl() %>">
                <input type="hidden" name="description" value="<%= item.getDescription() %>">
                <button type="submit" class="buy-button">Buy</button>
            </form>
        </div>
        <%     }
           } else { %>
        <p>Your Wishlist is empty.</p>
        <% } %>
    </div>
    <a href="Home.jsp" class="continue-shopping">Continue Shopping</a>
    
</body>
</html>
