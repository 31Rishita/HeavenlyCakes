package com.demo;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ProductDetailsServlet
 */
@WebServlet("/productDetails")
public class ProductDetailsServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productId = request.getParameter("id");
        
        // Assuming you have a ProductService to handle database operations
        ProductService productService = new ProductService();
        
        // Retrieve the product by ID from the database
        Product product = productService.getProductById(Integer.parseInt(productId));
        
        // Pass product to JSP
        request.setAttribute("product", product);
        
        // Forward to cart.jsp
        RequestDispatcher dispatcher = request.getRequestDispatcher("/cart.jsp");
        dispatcher.forward(request, response);
    }
}
