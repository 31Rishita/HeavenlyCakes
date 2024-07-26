package web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Dao.*;

@WebServlet(name = "AddToCartServlet", urlPatterns = "/add-to-cart")
public class AddToCartServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {
            int id = Integer.parseInt(request.getParameter("id"));
            HttpSession session = request.getSession();
            
            // Retrieve cart items from session
            ArrayList<Cart> cartList = (ArrayList<Cart>) session.getAttribute("cart-list");
            
            if (cartList == null) {
                cartList = new ArrayList<>();
            }
            
            boolean exist = false;
            
            // Check if item already exists in cart
            for (Cart c : cartList) {
                if (c.getId() == id) {
                    exist = true;
                    out.println("<h3 style='color:crimson; text-align: center'>Item Already in Cart. <a href='Cart.jsp'>Go to Cart Page</a></h3>");
                    break;
                }
            }
            
            if (!exist) {
                // Item is not in cart, add it
                Cart cm = new Cart();
                cm.setId(id);
                cm.setQuantity(1);
                cartList.add(cm);
                
                // Update cart in session
                session.setAttribute("cart-list", cartList);
                
                // Redirect to Cart.jsp
                response.sendRedirect("Cart.jsp");
            }
        }
    }
}
