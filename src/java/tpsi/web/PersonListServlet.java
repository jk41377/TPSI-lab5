package tpsi.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "PersonListServlet", urlPatterns = {"/personList"})
public class PersonListServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Person> personList = new ArrayList<>();
        personList.add(new Person("super1", "gosc1", "super1@gosc1.pl"));
        personList.add(new Person("super2", "gosc2", "super2@gosc2.pl"));
        personList.add(new Person("super3", "gosc3", "super3@gosc3.pl"));
        personList.add(new Person("super4", "gosc4", "super4@gosc4.pl"));
        personList.add(new Person("super5", "gosc5", "super5@gosc5.pl"));
        personList.add(new Person("super6", "gosc6", "super6@gosc6.pl"));
        
        request.setAttribute("personList", personList);
        request.getRequestDispatcher("personList.jsp").forward(request, response);
    }
}