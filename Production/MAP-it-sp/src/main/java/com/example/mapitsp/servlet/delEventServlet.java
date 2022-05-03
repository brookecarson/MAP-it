package com.example.mapitsp.servlet;

import com.example.mapitsp.dao.eventDAO;
import com.example.mapitsp.model.event;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/deleteEvent")
public class delEventServlet extends HttpServlet {
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
            deleteEvent(request,response);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    private void deleteEvent(HttpServletRequest request, HttpServletResponse response)
        throws SQLException, IOException {
            int id = Integer.parseInt(request.getParameter("id"));
            event mainEvent = new event(id);
            eventdao.deleteEvent(mainEvent);
            response.sendRedirect("event-view.jsp");
    }
}
