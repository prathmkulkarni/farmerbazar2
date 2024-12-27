package com.farmerbazar.controllers;

import com.farmerbazar.utils.DBUtil;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/viewProducts")
public class ViewProductsServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try (Connection conn = DBUtil.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery("SELECT * FROM Products")) {

            StringBuilder productList = new StringBuilder();
            productList.append("<html><head><title>Available Products</title></head><body>");
            productList.append("<h1>Available Products</h1>");
            productList.append("<table border='1'>");
            productList.append("<tr><th>Product Name</th><th>Price</th><th>Quantity</th><th>Action</th></tr>");

            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                double price = rs.getDouble("price");
                int quantity = rs.getInt("quantity");

                productList.append("<tr>")
                           .append("<td>").append(name).append("</td>")
                           .append("<td>").append(price).append("</td>")
                           .append("<td>").append(quantity).append("</td>")
                           .append("<td><a href='purchase?productId=").append(id).append("'>Buy</a></td>")
                           .append("</tr>");
            }

            productList.append("</table>");
            productList.append("</body></html>");
            response.getWriter().write(productList.toString());
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().write("Error: " + e.getMessage());
        }
    }
}