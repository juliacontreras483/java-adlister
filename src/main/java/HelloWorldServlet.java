import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet(name = "HelloWorldServlet", urlPatterns = "/hello")
public class HelloWorldServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<h1>Hello World!</h1>");


        String name = request.getParameter("name");


        if (name == null){
            name = "Julia";
        }
        out.println("<h1><em> Hello, " + name +"</em>! :)");

    }
}

//    Finish up the Hello World Servlet
//
//    Create a page that displays "Hello World!" when a user visits /hello
//
//        Bonus
//
//        Make the page say "Hello, <name>!" if name is passed as part of the query string (e.g. /hello?name=codeup), otherwise default to "Hello, World!".


