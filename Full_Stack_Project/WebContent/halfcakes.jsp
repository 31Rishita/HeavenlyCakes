<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="halfstyle.css">
</head>
<body class="">
    
    <div class="container">
        <header>
            <h1>Half Cakes</h1>
            <div class="shopping">
                <img src="https://cdn.pixabay.com/photo/2016/10/10/14/46/icon-1728552_1280.jpg">
                <span class="quantity">0</span>
                <div class="notification"></div>
            </div>
        </header>
        <div class="list">
            <%-- JSP loop to iterate over products --%>
            <%
                for (int i = 0; i < products.length; i++) {
                    out.println("<div class=\"item\">");
                    out.println("<img src=\"" + products[i].getImage() + "\">");
                    out.println("<div class=\"title\">" + products[i].getName() + "</div>");
                    out.println("<div class=\"price\">$" + products[i].getPrice() + "</div>");
                    out.println("<button onclick=\"addToCard(" + i + ")\">Add To Cart</button>");
                    out.println("</div>");
                }
            %>
        </div>
    </div>
    <div class="card">
        <h1>Cart</h1>
        <ul class="listCard">
            <%-- JSP loop to iterate over listCards --%>
            <%
                for (int i = 0; i < listCards.length; i++) {
                    out.println("<li>");
                    out.println("<div class=\"item-row\">");
                    out.println("<div class=\"item-img\"><img src=\"" + listCards[i].getImage() + "\"></div>");
                    out.println("<div class=\"item-name\">" + listCards[i].getName() + "</div>");
                    out.println("<div class=\"item-price\">$" + listCards[i].getPrice() + "</div>");
                    out.println("<div class=\"item-quantity\">");
                    out.println("<button onclick=\"changeQuantity(" + i + ", " + listCards[i].getQuantity() + " - 1)\">-</button>");
                    out.println("<div class=\"count\">" + listCards[i].getQuantity() + "</div>");
                    out.println("<button onclick=\"changeQuantity(" + i + ", " + listCards[i].getQuantity() + " + 1)\">+</button>");
                    out.println("</div>");
                    out.println("</div>");
                    out.println("</li>");
                }
            %>
        </ul>
        <div class="checkOut">
            <div class="total">$<%= totalPrice %></div>
            <div class="closeShopping">Close</div>
        </div>
    </div>

    <script src="app.js"></script>
</body>
</html>
