package com.example.mapitsp.dao;

import com.example.mapitsp.model.user;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import static com.example.mapitsp.Utils.getConnection;

public class userDAO {

    private static final String INSERT_USER = "INSERT INTO user" + " (user_name, user_email, user_password, user_role) VALUES " + "(?,?,?,?);";
    private static final String SELECT_USER_BY_ID = "select user_id, user_name, user_email, user_password, user_role from user where user_id = ?;";

    private static final String SELECT_ALL_USERS = "select * from user";

    private static final String DELETE_USER_SQL = "delete from user where user_id = ?;";
    private static final String UPDATE_USER_SQL = "update user set user_name = ?, user_email = ?, user_password = ?, user_role = ? where user_id = ?;";


    public userDAO() {
    }

    public void insertUser(user mainUser) {
        try(Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USER)){
            preparedStatement.setString(1, mainUser.getName());
            preparedStatement.setString(2, mainUser.getEmail());
            preparedStatement.setString(3, mainUser.getPassword());
            preparedStatement.setString(4, mainUser.getRole());
            preparedStatement.executeUpdate();
        }catch (Exception e){
            System.err.println(e.getLocalizedMessage());
        }
    }

    public user selectUser(int id) {
        user mainUser = null;

        try(Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_ID)){
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                String name = rs.getString("user_name");
                String email = rs.getString("user_email");
                String password = rs.getString("user_password");
                String role = rs.getString("user_role");
                mainUser = new user(id, name, email, password, role);

            }
        } catch (Exception e) {
            System.err.println(e.getLocalizedMessage());
        }

        return mainUser;
    }

    public List<user> selectAllUsers() {
        List < user > userList = new ArrayList<>();
        try(Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USERS)){
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("user_id");
                String name = rs.getString("user_name");
                String email = rs.getString("user_email");
                String password = rs.getString("user_password");
                String role = rs.getString("user_role");;
                userList.add(new user(id, name, email, password, role));

            }
        } catch (Exception e) {
            System.err.println(e.getLocalizedMessage());
        }
        return userList;
    }

    public boolean deleteUser(user mainUser) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(DELETE_USER_SQL)){
            preparedStatement.setInt(1, mainUser.getId());
            rowDeleted = preparedStatement.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    public boolean updateUser(user mainUser) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_USER_SQL)) {

            preparedStatement.setString(1, mainUser.getName());
            preparedStatement.setString(2, mainUser.getEmail());
            preparedStatement.setString(3, mainUser.getPassword());
            preparedStatement.setString(4, mainUser.getRole());
            preparedStatement.setInt(5, mainUser.getId());


            rowUpdated = preparedStatement.executeUpdate() > 0;
        }
        return rowUpdated;
    }

}