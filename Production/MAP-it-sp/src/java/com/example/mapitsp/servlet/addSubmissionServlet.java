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

@WebServlet("/contactSubmission")
public class addSubmissionServlet extends HttpServlet {
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
            insertSubmission(request,response);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    private void insertSubmission(HttpServletRequest request, HttpServletResponse response)
        throws SQLException, IOException{
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String message = request.getParameter("message");
            String number = request.getParameter("number");
            LocalDate currDate = LocalDate.now();
            Date current = Date.valueOf(currDate);
            contactSub submission = new contactSub(name, email, message, current, number);
            contactSubdao.insertContactSub(submission);
            response.sendRedirect("admin-test.jsp");

    }

    private void listSub(HttpServletRequest request, HttpServletResponse response)
        throws SQLException, IOException, ServletException {
            List <contactSub> listSub = contactSubdao.selectAllSubmissions();
            request.setAttribute("listSub", listSub);
            RequestDispatcher dispatcher = request.getRequestDispatcher("admin-view.jsp");
            dispatcher.forward(request,response);
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
            response.sendRedirect("list");
    }

    private void deleteSub(HttpServletRequest request, HttpServletResponse response)
        throws SQLException, IOException {
            int id = Integer.parseInt(request.getParameter("id"));
            contactSub sub = new contactSub(id);
            contactSubdao.deleteSubmission(sub);
            response.sendRedirect("list");
    }

}
