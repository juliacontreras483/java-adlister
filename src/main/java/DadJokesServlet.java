import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "DadJokesServlet", urlPatterns = "/dadjokes")
public class DadJokesServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String joke = request.getParameter("joke");

        if(joke == null){
            joke ="hungry";
        }

        out.println("<h1> Hi " + joke + ", I'm Dad!</h1>");
    }
}