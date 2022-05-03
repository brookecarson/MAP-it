package com.example.mapitsp.servlet;

import com.example.mapitsp.dao.eventDAO;
import com.example.mapitsp.model.event;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;

@WebServlet("/addEvent")
public class addEventServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private eventDAO eventdao;


    public void init() {
        eventdao = new eventDAO();
    }

    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            insertEvent(request,response);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    private void insertEvent(HttpServletRequest request, HttpServletResponse response)
        throws SQLException, IOException{
            String name = request.getParameter("name");
            String status = request.getParameter("status");
            String type = request.getParameter("type");
            String location = request.getParameter("location");
            Date date = Date.valueOf(request.getParameter("date"));
            String sport = request.getParameter("sport");
            String gender = request.getParameter("gender");
            String link = request.getParameter("link");
            String code = request.getParameter("code");

            event mainEvent = new event(name, status, type, location, sport, gender, date, link, code);

            eventdao.insertEvent(mainEvent);
            response.sendRedirect("event-view.jsp");

    }


}
