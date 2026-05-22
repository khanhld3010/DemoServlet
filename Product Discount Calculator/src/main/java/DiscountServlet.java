import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/discount")
public class DiscountServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String description = req.getParameter("description");
        double price = Double.parseDouble(req.getParameter("price"));
        double discountPercent = Double.parseDouble(req.getParameter("discount_percent"));
        double discount = price * discountPercent * 0.01;
        double discountPrice = price - discount;
        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter out = resp.getWriter();
        out.println("<html>");
        out.println("<body>");
        out.println("<h1>Product Discount Result</h1>");
        out.println("<p><strong>Product Description: </strong>" + description + "</p>");
        out.println("<p><strong>List Price: </strong>" + price + "</p>");
        out.println("<p><strong>Discount Percent: </strong>" + discountPercent + "%</p>");
        out.println("<p><strong>Discount Amount: </strong>" + discount + "</p>");
        out.println("<p><strong>Discount Price: </strong>" + discountPrice + "</p>");
        out.println("</body>");
        out.println("</html>");
    }
}
