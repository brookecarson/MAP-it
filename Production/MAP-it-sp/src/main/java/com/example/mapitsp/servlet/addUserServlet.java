package com.example.mapitsp.servlet;

import com.example.mapitsp.dao.userDAO;
import com.example.mapitsp.model.contactSub;
import com.example.mapitsp.model.user;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/addUser")
public class addUserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private userDAO userdao;

    public void init() {
        userdao = new userDAO();
    }

    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            insertUser(request,response);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    private void insertUser(HttpServletRequest request, HttpServletResponse response)
        throws SQLException, IOException{
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String role = request.getParameter("role");
            user mainUser = new user(name, email, password, role);
            userdao.insertUser(mainUser);
            response.sendRedirect("user-view.jsp");

    }

}
