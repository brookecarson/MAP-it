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

@WebServlet("/deleteSubmission")
public class delSubmissionServlet extends HttpServlet {
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
            deleteSub(request,response);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    private void deleteSub(HttpServletRequest request, HttpServletResponse response)
        throws SQLException, IOException {
            int id = Integer.parseInt(request.getParameter("id"));
            contactSub sub = new contactSub(id);
            contactSubdao.deleteSubmission(sub);
            response.sendRedirect("admin-test.jsp");
    }

}
