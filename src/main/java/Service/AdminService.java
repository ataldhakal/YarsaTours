

package Service;

import DBConnection.DBConnection;
import Model.Student;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AdminService {


    public Student getUser(String userName, String password) {
        Student student = null;

        String query = "select * from admin where userName=? and password=?";
        PreparedStatement ps = new DBConnection().getStatement(query);

        try {
            ps.setString(1, userName);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                student = new Student();

                student.setId(rs.getInt("id"));
                student.setUserName(rs.getString("userName"));

                student.setEmail(rs.getString("email"));
                student.setPassword(rs.getString("password"));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return student;
    }


    //    This is related to list user page
    public List<Student> getUserList() {
        List<Student> userList = new ArrayList<>();
        String query = "select * from user";
        System.out.println(query);
        PreparedStatement pstm = new DBConnection().getStatement(query);
        try {
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                Student student = new Student();

                student.setId(rs.getInt("uid"));
                student.setUserName(rs.getString("userName"));
                student.setEmail(rs.getString("email"));
                student.setPassword(rs.getString("password"));


                userList.add(student);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return userList;
    }

    //    For getting user detail in editpackage
    public Student getUserRow(int id) {
        Student student = new Student();
        String query = "select * from book where id = ?";
        PreparedStatement pstm = new DBConnection().getStatement(query);

        try {
            pstm.setInt(1, id);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                student.setId(rs.getInt("id"));
                student.setEmail(rs.getString("email"));
                student.setUserName(rs.getString("userName"));
                student.setPassword(rs.getString("password"));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return student;
    }

    // Delete the package
    public void deleteUser(int id) {
        String query = "delete from user where uid = ?";
        PreparedStatement ps = new DBConnection().getStatement(query);

        try {
            ps.setInt(1, id);
            ps.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    //    For editing package
    public void editUser(int id, Student student) throws SQLException {

        String query = "update book set Name=?, address=?, number=?, destination=?, no_of_tickets=? where id=?";

        try (PreparedStatement pstm = new DBConnection().getStatement(query)) {
            pstm.setString(1, student.getUserName());
            pstm.setString(2, student.getAddress());
            pstm.setString(3, student.getPhoneNumber());
            pstm.setString(4, student.getLocation());
            pstm.setInt(5, student.getTickets());
            pstm.setInt(6, id);
            pstm.executeUpdate();
        }

    }

    public List<Student> showbookingdetails(int id) {
        List<Student> students = new ArrayList<>();
        String query = "select * from destination where id = ?";
        PreparedStatement pstm = new DBConnection().getStatement(query);

        try {
            pstm.setInt(1, id);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                Student student = new Student();
                student.setId(rs.getInt("id"));
                student.setLocation(rs.getString("Name"));
                student.setPrice(rs.getInt("Price"));
                student.setStay_time(rs.getString("Time"));
                students.add(student);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return students;
    }


    public void insertBookingDetails( Student student, int newprice) {

        String query = "insert into book(Name, address, number, destination, no_of_tickets, cost, Status, Stay_time)" + "values(?,?,?,?,?,?,?,?)";
        PreparedStatement preparedStatements = new DBConnection().getStatement(query);  // execute parametrized query

        try {
            preparedStatements.setString(1, student.getUserName());
            preparedStatements.setString(2, student.getAddress());
            preparedStatements.setString(3, student.getPhoneNumber());
            preparedStatements.setString(4, student.getLocation());
            preparedStatements.setInt(5, student.getTickets());
            preparedStatements.setInt(6, newprice);
            preparedStatements.setString(7, student.getStatus());
            preparedStatements.setString(8, student.getStay_time());

            preparedStatements.execute();

        } catch (
                SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Student> getBookingDetails(int id) {
        List<Student> bookingDetails = new ArrayList<>();
        try {
            DBConnection db = new DBConnection();
            PreparedStatement pstn = db.getStatement("SELECT * FROM book WHERE id = ?");
            pstn.setInt(1, id);
            ResultSet rs = pstn.executeQuery();

            if (rs.next()) {
                Student student = new Student();
                student.setId(rs.getInt("id"));
                student.setUserName(rs.getString("Name"));
                student.setAddress(rs.getString("address"));
                student.setPhoneNumber(rs.getString("number"));
                student.setLocation(rs.getString("destination"));
                student.setTickets(rs.getInt("no_of_tickets"));
                student.setPrice(rs.getInt("cost"));
                student.setStatus(rs.getString("Status"));
                student.setStay_time(rs.getString("Stay_time"));
                bookingDetails.add(student);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return bookingDetails;
    }


    public List<Student> ShowPrice(int uid) {
        List<Student> students = new ArrayList<>();
        String query = "select * from book where id = ?";
        PreparedStatement pstm = new DBConnection().getStatement(query);

        try {
            pstm.setInt(1, uid);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                Student student = new Student();
                student.setId(rs.getInt("id"));
                student.setUserName(rs.getString("Name"));
                student.setAddress(rs.getString("address"));
                student.setPhoneNumber(rs.getString("number"));
                student.setTickets(rs.getInt("no_of_tickets"));
                student.setPrice(rs.getInt("cost"));
                student.setStatus(rs.getString("Status"));
                student.setStay_time(rs.getString("Stay_time"));
                students.add(student);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return students;
    }


    // this for showing the list of packages in the manage policy
    public List<Student> showbooking() {
        List<Student> bookingDetails = new ArrayList<>();
        try {
            DBConnection db = new DBConnection();
            PreparedStatement pstn = db.getStatement("SELECT * FROM book");
            ResultSet rs = pstn.executeQuery();
            while (rs.next()) {
                Student student = new Student();
                student.setId(rs.getInt("id"));
                student.setUserName(rs.getString("Name"));
                student.setAddress(rs.getString("address"));
                student.setPhoneNumber(rs.getString("number"));
                student.setLocation(rs.getString("destination"));
                student.setTickets(rs.getInt("no_of_tickets"));
                student.setPrice(rs.getInt("cost"));
                student.setStatus(rs.getString("Status"));
                student.setStay_time(rs.getString("Stay_time"));
                bookingDetails.add(student);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return bookingDetails;
    }


    // getbooking details 2
    public Student getBookingDetails1(int id) {
        Student student = null;
        try {
            DBConnection db = new DBConnection();
            PreparedStatement pstn = db.getStatement("SELECT * FROM book WHERE id = ?");
            pstn.setInt(1, id);
            ResultSet rs = pstn.executeQuery();

            if (rs.next()) {
                student = new Student();
                student.setId(rs.getInt("id"));
                student.setUserName(rs.getString("Name"));
                student.setAddress(rs.getString("address"));
                student.setPhoneNumber(rs.getString("number"));
                student.setLocation(rs.getString("destination"));
                student.setTickets(rs.getInt("no_of_tickets"));
                student.setPrice(rs.getInt("cost"));
                student.setStatus(rs.getString("Status"));
                student.setStay_time(rs.getString("Stay_time"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return student;
    }


    public void reject(Student student) {
        String query = "UPDATE book SET Status = ? WHERE id = ?";
        PreparedStatement ps = new DBConnection().getStatement(query);

        try {
            ps.setString(1, student.getStatus());
            ps.setInt(2, student.getId());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }public void accept(Student student) {
        String query = "UPDATE book SET Status = ? WHERE id = ?";
        PreparedStatement ps = new DBConnection().getStatement(query);

        try {
            ps.setString(1, student.getStatus());
            ps.setInt(2, student.getId());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }




}