package com.example.mapitsp.servlet;

import com.example.mapitsp.dao.registrationDAO;
import com.example.mapitsp.model.registration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/deleteRegistration")
public class delRegistrationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private registrationDAO regisdao;


    public void init() {
        regisdao = new registrationDAO();
    }

    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            deleteRegistration(request,response);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void deleteRegistration(HttpServletRequest request, HttpServletResponse response)
        throws SQLException, IOException {
            int id = Integer.parseInt(request.getParameter("id"));
            registration regis = new registration(id);
            regisdao.deleteRegistration(regis);
            response.sendRedirect("regis-view.jsp");
    }

}
