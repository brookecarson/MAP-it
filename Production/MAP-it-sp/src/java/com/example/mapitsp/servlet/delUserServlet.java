package com.example.mapitsp.servlet;

import com.example.mapitsp.dao.userDAO;
import com.example.mapitsp.model.user;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/deleteUser")
public class delUserServlet extends HttpServlet {
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
            delUser(request,response);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    private void delUser(HttpServletRequest request, HttpServletResponse response)
        throws SQLException, IOException {
            int id = Integer.parseInt(request.getParameter("id"));
            user mainUser = new user(id);
            userdao.deleteUser(mainUser);
            response.sendRedirect("user-view.jsp");
    }

}
