


package Controller;

import java.io.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import DBConnection.DBConnection;
import Hashing.HashPassword;
import Model.Student;
import Service.AdminService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "admin", urlPatterns = "/admin")
public class AdminController extends HttpServlet {
    private String message;

//    public void init() {
//        message = "Hello World!";
//    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");
        doPost(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");

        // Hello
        PrintWriter out = response.getWriter();


        String action = request.getParameter("page");


        // To redirect to loginpage
        if (action.equalsIgnoreCase("loginpage"))

        {
            RequestDispatcher rd = request.getRequestDispatcher("admin/login.jsp");
            rd.forward(request, response);
        }

        if (action.equalsIgnoreCase("login") ){

            String username = request.getParameter("username");
            String password = HashPassword.hashPassword(request.getParameter("password"));
            System.out.println(username + " " + password + " ");

            Student student = new AdminService().getUser(username, password);

            if (student != null) {
                HttpSession session = request.getSession();
                session.setAttribute("uid", student.getId());
                session.setAttribute("email", student.getEmail());
                session.setAttribute("user", username);

                request.setAttribute("msg", "Login Successful!");
                System.out.println(request.getAttribute("msg"));

                RequestDispatcher rd = request.getRequestDispatcher("admin/dashboard.jsp");
                rd.forward(request, response);
            } else {
                request.setAttribute("msg", "Invalid username or password");
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);
            }

        }


        if (action.equalsIgnoreCase("home"))

        {
            RequestDispatcher rd = request.getRequestDispatcher("user/landingpage.jsp");
            rd.forward(request, response);
        }







        if(action.equalsIgnoreCase("logout")){
            HttpSession session = request.getSession(false);
            session.invalidate();

            RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
            requestDispatcher.forward(request, response);
        }


        if(action.equalsIgnoreCase("manageuser")){
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("admin/manageuser.jsp");
            requestDispatcher.forward(request, response);

        }










        // for deleting the package
        if (action.equalsIgnoreCase("delete"))

        {
            int id = Integer.parseInt(request.getParameter("id"));
            AdminService userService = new AdminService();
            userService.deleteUser(id);

            RequestDispatcher rd = request.getRequestDispatcher("admin/manageuser.jsp");
            rd.forward(request, response);
        }

        if (action.equalsIgnoreCase("claim"))

        {



            RequestDispatcher rd = request.getRequestDispatcher("admin/Claim.jsp");
            rd.forward(request, response);
        }

        //        for accepting the request
        if (action.equalsIgnoreCase("accept")){

            Student student = new Student();

            student.setStatus(request.getParameter("value"));
            student.setId(Integer.parseInt(request.getParameter("id")));
            new AdminService().accept(student);

            RequestDispatcher rd = request.getRequestDispatcher("admin/Claim.jsp");
            rd.forward(request, response);

        }
//        for rejecting the claim
        if (action.equalsIgnoreCase("reject")){

            Student student = new Student();

            student.setStatus(request.getParameter("value"));
            student.setId(Integer.parseInt(request.getParameter("id")));

            new AdminService().reject(student);

            RequestDispatcher rd = request.getRequestDispatcher("admin/Claim.jsp");
            rd.forward(request, response);

        }





    }




    public void destroy() {
    }
}