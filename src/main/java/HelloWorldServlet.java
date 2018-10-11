import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.io.IOException;

@WebServlet(name = "HelloWorldServlet", urlPatterns = {"/hello", "/counter"})
public class HelloWorldServlet extends HttpServlet {

    private int hitCount;


    protected void doGet(HttpServletRequest req, HttpServletResponse res)
        throws IOException {
        //headers
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();

        //String name = "World";
        String name = req.getParameter("name");
        //parameter handling
        if( name == null)
            name = "World";


        //print hello
        out.println("Hello " + name);



        String reset = req.getParameter("reset");


        if(reset == null){
            hitCount++;
            out.println("Counter: " + hitCount);
        } else if(reset.equals("true")){
            hitCount=0;
        }












    }
}
