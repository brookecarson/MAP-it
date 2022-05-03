package com.example.mapitsp.servlet;

import com.example.mapitsp.dao.contactSubDAO;
import com.example.mapitsp.dao.registrationDAO;
import com.example.mapitsp.model.contactSub;
import com.example.mapitsp.model.registration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.time.LocalDate;

@WebServlet("/editRegistration")
public class editRegistrationServlet extends HttpServlet {
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
            updateRegistration(request,response);
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    private void updateRegistration(HttpServletRequest request, HttpServletResponse response)
        throws SQLException, IOException {
            int id = Integer.parseInt(request.getParameter("id"));
            String grp_name = request.getParameter("grp_name");
            String cptn_name = request.getParameter("cptn_name");
            String cptn_email = request.getParameter("cptn_email");
            String cptn_number = request.getParameter("cptn_number");
            String mem_one_name = request.getParameter("mem_one");
            String mem_two_name = request.getParameter("mem_two");
            String mem_three_name = request.getParameter("mem_three");
            String mem_four_name = request.getParameter("mem_four");
            String mem_five_name = request.getParameter("mem_five");
            String mem_six_name = request.getParameter("mem_six");
            String mem_seven_name = request.getParameter("mem_seven");
            String code = request.getParameter("code");
            Date date = Date.valueOf(request.getParameter("date"));
            registration regis = new registration(id, grp_name, cptn_name, cptn_email, cptn_number, mem_one_name, mem_two_name, mem_three_name,
                mem_four_name, mem_five_name, mem_six_name, mem_seven_name, code, date);

            regisdao.updateRegistration(regis);
            response.sendRedirect("regis-view.jsp");
    }

}