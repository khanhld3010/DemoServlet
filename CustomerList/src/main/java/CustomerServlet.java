import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/CustomerList")
public class CustomerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Customer> customerList = new ArrayList<>();
        customerList.add(new Customer("Mai Văn Hoàn", "1983-08-20", "Hà Nội",
                "https://i.pinimg.com/236x/07/61/31/076131898bcb1a72d053133e7d149015.jpg"));
        customerList.add(new Customer("Nguyễn Văn Nam", "1983-08-21", "Bắc Giang",
                "https://i.pinimg.com/236x/07/61/31/076131898bcb1a72d053133e7d149015.jpg"));
        customerList.add(new Customer("Nguyễn Thái Hòa", "1983-08-22", "Nam Định",
                "https://i.pinimg.com/236x/07/61/31/076131898bcb1a72d053133e7d149015.jpg"));
        customerList.add(new Customer("Trần Đăng Khoa", "1983-08-17", "Hà Tây",
                "https://i.pinimg.com/236x/07/61/31/076131898bcb1a72d053133e7d149015.jpg"));
        customerList.add(new Customer("Nguyễn Đình Thi", "1983-08-19", "Hà Nội",
                "https://i.pinimg.com/236x/07/61/31/076131898bcb1a72d053133e7d149015.jpg"));

        req.setAttribute("customerList",customerList);
        req.getRequestDispatcher("/CustomerList.jsp").forward(req,resp);
    }
}
