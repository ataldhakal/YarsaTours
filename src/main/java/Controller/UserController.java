


package Controller;

import java.io.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DBConnection.DBConnection;
import Hashing.HashPassword;
import Model.Student;
import Service.UserService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "UserController", urlPatterns = "/user")
public class UserController extends HttpServlet {
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
        if (action.equalsIgnoreCase("loginpage")) {
            RequestDispatcher rd = request.getRequestDispatcher("user/login.jsp");
            rd.forward(request, response);
        }

        if (action.equalsIgnoreCase("login")) {

            String username = request.getParameter("username");
            String password = HashPassword.hashPassword(request.getParameter("password"));
            System.out.println(username + " " + password + " ");

            Student student = new UserService().getUser(username, password);
            if (student != null) {
                HttpSession session = request.getSession();
                session.setAttribute("uid", student.getId());
                session.setAttribute("email", student.getEmail());
                session.setAttribute("user", username);
                request.setAttribute("msg", "Login Successful!");
                System.out.println(request.getAttribute("msg"));

                RequestDispatcher rd = request.getRequestDispatcher("user/landingpage.jsp");
                rd.forward(request, response);
            } else {
                request.setAttribute("msg", "Invalid username or password");
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);
            }
        }


        //To redirect in Register Page
        if (action.equalsIgnoreCase("registerpage")) {
            RequestDispatcher rd = request.getRequestDispatcher("user/register.jsp");
            rd.forward(request, response);
        }

        // to redirect to the index page
        if (action.equalsIgnoreCase("return")) {
            RequestDispatcher rd = request.getRequestDispatcher("user/landingpage.jsp");
            rd.forward(request, response);
        }


        // to redirect to dashboard
        if (action.equalsIgnoreCase("dashboard")) {
            RequestDispatcher rd = request.getRequestDispatcher("user/dashboard.jsp");
            rd.forward(request, response);
        }
        if (action.equalsIgnoreCase("home")) {
            RequestDispatcher rd = request.getRequestDispatcher("user/landingpage.jsp");
            rd.forward(request, response);
        }

//        To register a new account
        if (action.equalsIgnoreCase("register")) {
            Student student = new Student();

            student.setUserName(request.getParameter("username"));
            student.setEmail(request.getParameter("email"));
            student.setPassword(HashPassword.hashPassword(request.getParameter("password")));

            new UserService().insertUser(student);

            System.out.printf("Data Inserted");

            RequestDispatcher rd = request.getRequestDispatcher("user/login.jsp");
            try {
                rd.forward(request, response);
            } catch (ServletException e) {
                throw new RuntimeException(e);
            }
        }

        // send to index page
        if (action.equalsIgnoreCase("index")) {
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
        }


//        For user_details
        if (action.equalsIgnoreCase("userDetails")) {
            int id = Integer.parseInt(request.getParameter("id"));
            Student student = new UserService().getUserRow(id);
            request.setAttribute("id", id);
            request.setAttribute("student", student);  //Why this

            RequestDispatcher rd = request.getRequestDispatcher("Pages/user_details.jsp");
            rd.forward(request, response);
        }


        // for editing users
        if (action.equalsIgnoreCase("userEdit")) {
            int id = Integer.parseInt(request.getParameter("id"));
            System.out.println(id);
            Student student = new UserService().getUserRow(id);
            request.setAttribute("id", id);
            request.setAttribute("student", student);
            RequestDispatcher rd = request.getRequestDispatcher("Pages/update_user.jsp");
            rd.forward(request, response);
        }


//        if(action.equalsIgnoreCase("logout")){
//            HttpSession session = request.getSession(false);
//            session.invalidate();
//
//            RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
//            requestDispatcher.forward(request, response);
//        }

        // For booking the ticket
        if (action.equalsIgnoreCase("booknow")) {
            int id = Integer.parseInt(request.getParameter("id"));
            List<Student> userList = new UserService().showbookingdetails(id);
            request.setAttribute("userList", userList);
            request.setAttribute("id", id);
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("user/booking.jsp");
            requestDispatcher.forward(request, response);
        }


        // so this controller save the  details and calculate the price of total tickets
        if (action.equalsIgnoreCase("savebooking")) {


//            int id = Integer.parseInt(request.getParameter("id"));
            Student student = new Student();

            student.setUserName(request.getParameter("username"));
            student.setAddress(request.getParameter("address"));
            student.setPhoneNumber(request.getParameter("phone"));
            student.setLocation(request.getParameter("destination"));
            student.setStay_time(request.getParameter("staytime"));
            student.setTickets(Integer.parseInt(request.getParameter("tickets")));
            student.setStatus((request.getParameter("status")));
            student.setId(Integer.parseInt((request.getParameter("id"))));

            // from here price will be calculated
            int newprice = 0;


            try {
                int id = student.getId();


                DBConnection db = new DBConnection();
                PreparedStatement pstn = db.getStatement("SELECT * FROM destination WHERE id = ?");
                pstn.setInt(1, id);
                ResultSet rs = pstn.executeQuery();

                if (rs.next()) {
                    int oldprice = rs.getInt("Price");
                    int no_of_tickets = student.getTickets();
                    System.out.println(no_of_tickets);
                    newprice = oldprice * no_of_tickets;
                }

            } catch (SQLException e) {
                e.printStackTrace();
            }


            System.out.println(newprice);

            int id1 = student.getId();

            System.out.println(id1);

//            this is used to insert data in database
            new UserService().insertBookingDetails(student, newprice);

//            this will be used to show the data in the showprice page
//            List<Student> s = new UserService().getBookingDetails(id1);
//            request.setAttribute("s", s);
//            request.setAttribute("id1", id1);

            request.setAttribute("newprice", newprice);
            request.setAttribute("username", student.getUserName());
            request.setAttribute("location", student.getLocation());
            request.setAttribute("ticket", student.getTickets());
            request.setAttribute("number", student.getPhoneNumber());
            request.setAttribute("time", student.getStay_time());



            RequestDispatcher requestDispatcher = request.getRequestDispatcher("user/ShowPrice.jsp");
            requestDispatcher.forward(request, response);
        }

        // goto manage package
        if (action.equalsIgnoreCase("managepackage")) {
            RequestDispatcher rd = request.getRequestDispatcher("user/managepackage.jsp");
            rd.forward(request, response);
        }

        //        Show the package of the user in the manage package list
        if (action.equalsIgnoreCase("listuser")) {

            Student student = new Student();
            List<Student> studentList = new UserService().getUserList();

            request.setAttribute("student", student);
            request.setAttribute("studentlist", studentList);
            RequestDispatcher rd = request.getRequestDispatcher("Pages/listuser.jsp");
            rd.forward(request, response);


        }

        // for deleting the package
        if (action.equalsIgnoreCase("delete")) {
            int id = Integer.parseInt(request.getParameter("id"));
            UserService userService = new UserService();
            userService.deleteUser(id);

            RequestDispatcher rd = request.getRequestDispatcher("user/managepackage.jsp");
            rd.forward(request, response);
        }

        // this code is for editing the details of the package
        if (action.equalsIgnoreCase("editdetails")) {

            int id = Integer.parseInt(request.getParameter("id"));


            Student student = new UserService().getBookingDetails1(id);

            request.setAttribute("student", student);


            RequestDispatcher rd = request.getRequestDispatcher("user/editpackage.jsp");
            rd.forward(request, response);
        }
        // to go to edit policy
        if (action.equalsIgnoreCase("finaledit")) {
            Student student = new Student();
            int id = Integer.parseInt(request.getParameter("id"));

            student.setUserName(request.getParameter("name"));
            student.setAddress(request.getParameter("address"));
            student.setPhoneNumber(request.getParameter("number"));
            student.setLocation(request.getParameter("location"));
            student.setTickets(Integer.parseInt(request.getParameter("ticket")));
            student.setPrice(Integer.parseInt(request.getParameter("price")));
            student.setStay_time(request.getParameter("stay"));

            try {
                new UserService().editUser(id, student);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }


            RequestDispatcher rd = request.getRequestDispatcher("user/managepackage.jsp");
            rd.forward(request, response);
        }

        // for changing password
        if (action.equalsIgnoreCase("changingpassword")) {
            Student student = new Student();
            HttpSession session = request.getSession();
            String email = (String) session.getAttribute("email");
            student.setPassword((request.getParameter("oldpassword")));
            student.setNewpassword((request.getParameter("newpassword")));
            new UserService().changePassword(student, email);
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
            requestDispatcher.forward(request, response);

        }


        if (action.equalsIgnoreCase("changepassword")) {

            RequestDispatcher rd = request.getRequestDispatcher("user/changepassword.jsp");
            rd.forward(request, response);

        }


        if (action.equalsIgnoreCase("logout")) {

            HttpSession session = request.getSession(false);
            session.invalidate();

            RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
            requestDispatcher.forward(request, response);

        }
    }




    public void destroy() {
    }
}