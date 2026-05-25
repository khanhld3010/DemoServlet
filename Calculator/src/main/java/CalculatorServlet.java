import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/calculate")
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        double firstOperand = Double.parseDouble(req.getParameter("first-operand"));
        String operator = req.getParameter("operator");
        double secondOperand = Double.parseDouble(req.getParameter("second-operand"));
        double result = 0;
        switch (operator) {
            case "addition":
                result = firstOperand + secondOperand;
                break;
            case "subtraction":
                result = firstOperand - secondOperand;
                break;
            case "multiplication":
                result = firstOperand * secondOperand;
                break;
            case "division":
                result = firstOperand / secondOperand;
                break;
        }
        req.setAttribute("result", result);
        req.getRequestDispatcher("resultPage.jsp").forward(req, resp);
    }
}
