/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tpsi.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author jk41377
 */
@WebServlet(name = "StudentsTable", urlPatterns = {"/students"})
public class StudentsTableServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        List<Person> students = (List<Person>) session.getAttribute("students");
        if (students == null) {
            students = new ArrayList<>();
        }

        session.setAttribute("students", students);
        request.getRequestDispatcher("students.jsp").forward(request, response);
    }
    
     protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Person person = new Person(request.getParameter("firstName"), 
                                   request.getParameter("lastName"),
                                   request.getParameter("email"));
        
        
        HttpSession session = request.getSession();
        List<Person> students = (List<Person>) session.getAttribute("students");
        students.add(person);

        session.setAttribute("students", students);
        request.getRequestDispatcher("students.jsp").forward(request, response);

    }
}
