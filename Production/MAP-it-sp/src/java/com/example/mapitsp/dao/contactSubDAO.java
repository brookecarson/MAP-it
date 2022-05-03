package com.example.mapitsp.dao;

import com.example.mapitsp.model.contactSub;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import static com.example.mapitsp.Utils.getConnection;

public class contactSubDAO {

    private static final String INSERT_CONTACT = "INSERT INTO contact_submissions" + " (contact_name, contact_message, contact_date, contact_number, contact_email) VALUES " + "(?,?,?,?,?);";
    private static final String SELECT_SUB_BY_ID = "select contact_id,contact_name,contact_message,contact_date,contact_number,contact_email from contact_submissions where contact_id = ?;";
    private static final String SELECT_ALL_SUBS = "select * from contact_submissions";
    private static final String DELETE_SUB_SQL = "delete from contact_submissions where contact_id = ?;";
    private static final String UPDATE_SUB_SQL = "update contact_submissions set contact_name = ?, contact_message = ?, contact_date = ?, contact_number = ?, contact_email = ? where contact_id = ?;";

    public contactSubDAO() {}

    public void insertContactSub(contactSub submission)
    {
        try(Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_CONTACT)){
            preparedStatement.setString(1, submission.getName());
            preparedStatement.setString(2, submission.getMessage());
            preparedStatement.setDate(3, submission.getDate());
            preparedStatement.setString(4, submission.getNumber());
            preparedStatement.setString(5, submission.getEmail());
            preparedStatement.executeUpdate();
        }catch (Exception e){
            System.err.println(e.getLocalizedMessage());
        }
    }

    public contactSub selectSubmission(int id)
    {
        contactSub submission = null;

        try(Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_SUB_BY_ID)){
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                String name = rs.getString("contact_name");
                String message = rs.getString("contact_message");
                Date date = rs.getDate("contact_date");
                String number = rs.getString("contact_number");
                String email = rs.getString("contact_email");
                submission = new contactSub(id, name, email, message, date, number);

                }
        } catch (Exception e) {
            System.err.println(e.getLocalizedMessage());
        }
        return submission;
    }

    public List< contactSub > selectAllSubmissions(){
        List < contactSub > submissions = new ArrayList<>();
        try(Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_SUBS)){
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("contact_id");
                String name = rs.getString("contact_name");
                String message = rs.getString("contact_message");
                Date date = rs.getDate("contact_date");
                String number = rs.getString("contact_number");
                String email = rs.getString("contact_email");
                submissions.add(new contactSub(id, name, email, message, date, number));

            }
        } catch (Exception e) {
            System.err.println(e.getLocalizedMessage());
        }
        return submissions;
    }

    public boolean deleteSubmission(contactSub submission) throws SQLException{
        boolean rowDeleted;
        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(DELETE_SUB_SQL)){
            preparedStatement.setInt(1, submission.getId());
            rowDeleted = preparedStatement.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    public boolean updateSubmission(contactSub submission) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_SUB_SQL)) {
            preparedStatement.setString(1, submission.getName());
            preparedStatement.setString(2, submission.getMessage());
            preparedStatement.setDate(3, submission.getDate());
            preparedStatement.setString(4, submission.getNumber());
            preparedStatement.setString(5, submission.getEmail());
            preparedStatement.setInt(6, submission.getId());

            rowUpdated = preparedStatement.executeUpdate() > 0;
        }
        return rowUpdated;
    }
}
