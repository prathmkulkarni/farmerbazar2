package com.farmerbazar.controllers;

import com.farmerbazar.utils.DBUtil;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/purchase")
public class PurchaseServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("userId") == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        int productId = Integer.parseInt(request.getParameter("productId"));
        int consumerId = (int) session.getAttribute("userId");

        try (Connection conn = DBUtil.getConnection()) {
            String productQuery = "SELECT * FROM Products WHERE id = ?";
            PreparedStatement productStmt = conn.prepareStatement(productQuery);
            productStmt.setInt(1, productId);
            ResultSet productRs = productStmt.executeQuery();

            if (productRs.next()) {
                String name = productRs.getString("name");
                double price = productRs.getDouble("price");
                int availableQuantity = productRs.getInt("quantity");

                if (availableQuantity > 0) {
                    int purchaseQuantity = 1; // For simplicity, purchasing 1 unit
                    double totalPrice = price * purchaseQuantity;

                    // Update product quantity
                    String updateProductQuery = "UPDATE Products SET quantity = quantity - ? WHERE id = ?";
                    PreparedStatement updateProductStmt = conn.prepareStatement(updateProductQuery);
                    updateProductStmt.setInt(1, purchaseQuantity);
                    updateProductStmt.setInt(2, productId);
                    updateProductStmt.executeUpdate();

                    // Insert order
                    String insertOrderQuery = "INSERT INTO Orders (product_id, consumer_id, quantity, total_price) VALUES (?, ?, ?, ?)";
                    PreparedStatement insertOrderStmt = conn.prepareStatement(insertOrderQuery);
                    insertOrderStmt.setInt(1, productId);
                    insertOrderStmt.setInt(2, consumerId);
                    insertOrderStmt.setInt(3, purchaseQuantity);
                    insertOrderStmt.setDouble(4, totalPrice);
                    insertOrderStmt.executeUpdate();

                    response.sendRedirect("confirmation.jsp?product=" + name + "&quantity=" + purchaseQuantity + "&total=" + totalPrice);
                } else {
                    response.getWriter().write("Product is out of stock.");
                }
            } else {
                response.getWriter().write("Product not found.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().write("Error: " + e.getMessage());
        }
    }
}