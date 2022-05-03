package com.example.mapitsp.dao;

import com.example.mapitsp.model.event;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import static com.example.mapitsp.Utils.getConnection;

public class eventDAO {

    private static final String INSERT_EVENT = "INSERT INTO event" + " (event_title, event_status, event_type, event_location, event_sport, event_gender, event_date, event_score_link, registration_code) VALUES " + "(?,?,?,?,?,?,?,?,?);";
    private static final String SELECT_EVENT_BY_ID = "select event_id, event_title, event_status, event_type, event_location, event_sport, event_gender, event_date, event_score_link, registration_code from event where event_id = ?;";
    private static final String SELECT_ALL_EVENTS = "select * from event";
    private static final String DELETE_EVENT_SQL = "delete from event where event_id = ?;";
    private static final String UPDATE_EVENT_SQL = "update event set event_title = ?, event_status = ?, event_type = ?, event_location = ?, event_sport = ?, event_gender = ?, event_date = ?, event_score_link = ?, registration_code = ? where event_id = ?;";

    public eventDAO(){}

    public void insertEvent(event mainEvent) {
        try(Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_EVENT)){
            preparedStatement.setString(1, mainEvent.getTitle());
            preparedStatement.setString(2, mainEvent.getStatus());
            preparedStatement.setString(3, mainEvent.getType());
            preparedStatement.setString(4, mainEvent.getLocation());
            preparedStatement.setString(5, mainEvent.getSport());
            preparedStatement.setString(6, mainEvent.getGender());
            preparedStatement.setDate(7, (Date) mainEvent.getDate());
            preparedStatement.setString(8, mainEvent.getLink());
            preparedStatement.setString(9, mainEvent.getRegistrationCode());
            preparedStatement.executeUpdate();
        }catch (Exception e){
            System.err.println(e.getLocalizedMessage());
        }
    }

    public event selectEvent(int id)
    {
        event mainEvent = null;

        try(Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_EVENT_BY_ID)){
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                String name = rs.getString("event_title");
                String status = rs.getString("event_status");
                String type = rs.getString("event_type");
                String location = rs.getString("event_location");
                String sport = rs.getString("event_sport");
                String gender = rs.getString("event_gender");
                Date date = rs.getDate("event_date");
                String link = rs.getString("event_score_link");
                String code = rs.getString("registration_code");

                mainEvent = new event(id, name, status, type, location, sport, gender, date, link, code);

            }
        } catch (Exception e) {
            System.err.println(e.getLocalizedMessage());
        }
        return mainEvent;
    }

    public List<event> selectAllEvents(){
        List < event > eventList = new ArrayList<>();
        try(Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_EVENTS)){
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("event_id");
                String name = rs.getString("event_title");
                String status = rs.getString("event_status");
                String type = rs.getString("event_type");
                String location = rs.getString("event_location");
                String sport = rs.getString("event_sport");
                String gender = rs.getString("event_gender");
                Date date = rs.getDate("event_date");
                String link = rs.getString("event_score_link");
                String code = rs.getString("registration_code");
                eventList.add(new event(id, name, status, type, location, sport, gender, date, link, code));

            }
        } catch (Exception e) {
            System.err.println(e.getLocalizedMessage());
        }
        return eventList;
    }

    public boolean deleteEvent(event mainEvent) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(DELETE_EVENT_SQL)){
            preparedStatement.setInt(1, mainEvent.getId());
            rowDeleted = preparedStatement.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    public boolean updateEvent(event mainEvent) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_EVENT_SQL)) {
            preparedStatement.setString(1, mainEvent.getTitle());
            preparedStatement.setString(2, mainEvent.getStatus());
            preparedStatement.setString(3, mainEvent.getType());
            preparedStatement.setString(4, mainEvent.getLocation());
            preparedStatement.setString(5, mainEvent.getSport());
            preparedStatement.setString(6, mainEvent.getGender());
            preparedStatement.setDate(7, (Date) mainEvent.getDate());
            preparedStatement.setString(8, mainEvent.getLink());
            preparedStatement.setString(9, mainEvent.getRegistrationCode());
            preparedStatement.setInt(10, mainEvent.getId());

            rowUpdated = preparedStatement.executeUpdate() > 0;
        }
        return rowUpdated;
    }




}
