import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ViewProfileServlet", urlPatterns = "/profile")
public class ViewProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println(request.getSession().getAttribute("validAttempt"));
        response.getWriter().println(request.getSession().getAttribute("validAttempt"));
        //redirect if user is not logged in
        if(!(Boolean) request.getSession().getAttribute("validAttempt")) {
            response.sendRedirect("/login");
            return;
        }

        request.getRequestDispatcher("/profile.jsp").forward(request, response);

    }
}
