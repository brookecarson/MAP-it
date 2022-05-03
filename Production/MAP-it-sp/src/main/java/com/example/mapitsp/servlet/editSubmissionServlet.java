package com.example.mapitsp.servlet;

import com.example.mapitsp.dao.contactSubDAO;
import com.example.mapitsp.model.contactSub;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.List;

@WebServlet("/editSubmission")
public class editSubmissionServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private contactSubDAO contactSubdao;


    public void init() {
        contactSubdao = new contactSubDAO();
    }

    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            updateSub(request,response);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    private void updateSub(HttpServletRequest request, HttpServletResponse response)
        throws SQLException, IOException {
            int id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String message = request.getParameter("message");
            String number = request.getParameter("number");
            LocalDate currDate = LocalDate.now();
            Date current = Date.valueOf(currDate);
            contactSub submission = new contactSub(id, name, email, message, current, number);
            contactSubdao.updateSubmission(submission);
            response.sendRedirect("admin-test.jsp");
    }

}
