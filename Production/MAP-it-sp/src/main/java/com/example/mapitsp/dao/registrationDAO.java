package com.example.mapitsp.dao;

import com.example.mapitsp.model.contactSub;
import com.example.mapitsp.model.registration;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import static com.example.mapitsp.Utils.getConnection;

public class registrationDAO {

    private static final String INSERT_REGISTRATION = "INSERT INTO registration" + " (group_name, group_captn_name, group_captn_email, group_captn_number, member_one_name, member_two_name, member_three_name, member_four_name, member_five_name, member_six_name, member_seven_name, registration_code, regis_date ) VALUES " + "(?,?,?,?,?,?,?,?,?,?,?,?,?);";
    private static final String SELECT_REGIS_BY_ID = "select regis_id, group_name, group_captn_name, group_captn_email, group_captn_number, member_one_name, member_two_name, member_three_name, member_four_name, member_five_name, member_six_name, member_seven_name, registration_code, regis_date from registration where regis_id = ?;";
    private static final String SELECT_ALL_REGIS = "select * from registration";
    private static final String DELETE_REGIS_SQL = "delete from registration where regis_id = ?;";
    private static final String UPDATE_REGIS_SQL = "update registration set group_name = ?, group_captn_name = ?, group_captn_email = ?, group_captn_number = ?, member_one_name = ?, member_two_name = ?, member_three_name = ?, member_four_name = ?, member_five_name = ?, member_six_name = ?, member_seven_name = ?, registration_code = ?, regis_date = ? where regis_id = ?;";

    public registrationDAO(){}

    public void insertRegistration(registration regis)
    {
        try(Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_REGISTRATION)){
            preparedStatement.setString(1, regis.getGrp_name());
            preparedStatement.setString(2, regis.getCptn_name());
            preparedStatement.setString(3, regis.getCptn_email());
            preparedStatement.setString(4, regis.getCptn_number());
            preparedStatement.setString(5, regis.getMember_one());
            preparedStatement.setString(6, regis.getMember_two());
            preparedStatement.setString(7, regis.getMember_three());
            preparedStatement.setString(8, regis.getMember_four());
            preparedStatement.setString(9, regis.getMember_five());
            preparedStatement.setString(10, regis.getMember_six());
            preparedStatement.setString(11, regis.getMember_seven());
            preparedStatement.setString(12, regis.getRegistrationCode());
            preparedStatement.setDate(13, regis.getDate());
            preparedStatement.executeUpdate();
        }catch (Exception e){
            System.err.println(e.getLocalizedMessage());
        }
    }

    public registration selectRegistration(int id)
    {
        registration regis = null;

        try(Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_REGIS_BY_ID)){
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                String grpName = rs.getString("group_name");
                String cptnName = rs.getString("group_captn_name");
                String cptnEmail = rs.getString("group_captn_email");
                String cptn_number = rs.getString("group_captn_number");
                String member_one_name = rs.getString("member_one_name");
                String member_two_name = rs.getString("member_two_name");
                String member_three_name = rs.getString("member_three_name");
                String member_four_name = rs.getString("member_four_name");
                String member_five_name = rs.getString("member_five_name");
                String member_six_name = rs.getString("member_six_name");
                String member_seven_name = rs.getString("member_seven_name");
                String registrationCode = rs.getString("registration_code");
                Date date = rs.getDate("regis_date");
                regis = new registration(id, grpName, cptnName, cptnEmail, cptn_number, member_one_name, member_two_name, member_three_name,
                        member_four_name, member_five_name, member_six_name, member_seven_name, registrationCode, date);

            }
        } catch (Exception e) {
            System.err.println(e.getLocalizedMessage());
        }
        return regis;
    }

    public List< registration > selectAllRegistrations(){
        List < registration > registrationList = new ArrayList<>();
        try(Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_REGIS)){
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("regis_id");
                String grpName = rs.getString("group_name");
                String cptnName = rs.getString("group_captn_name");
                String cptnEmail = rs.getString("group_captn_email");
                String cptn_number = rs.getString("group_captn_number");
                String member_one_name = rs.getString("member_one_name");
                String member_two_name = rs.getString("member_two_name");
                String member_three_name = rs.getString("member_three_name");
                String member_four_name = rs.getString("member_four_name");
                String member_five_name = rs.getString("member_five_name");
                String member_six_name = rs.getString("member_six_name");
                String member_seven_name = rs.getString("member_seven_name");
                String registrationCode = rs.getString("registration_code");
                Date date = rs.getDate("regis_date");
                registrationList.add(new registration(id, grpName, cptnName, cptnEmail, cptn_number, member_one_name, member_two_name, member_three_name,
                        member_four_name, member_five_name, member_six_name, member_seven_name, registrationCode, date));

            }
        } catch (Exception e) {
            System.err.println(e.getLocalizedMessage());
        }
        return registrationList;
    }

    public boolean deleteRegistration(registration regis) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(DELETE_REGIS_SQL)){
            preparedStatement.setInt(1, regis.getId());
            rowDeleted = preparedStatement.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    public boolean updateRegistration(registration regis) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_REGIS_SQL)) {
            preparedStatement.setString(1, regis.getGrp_name());
            preparedStatement.setString(2, regis.getCptn_name());
            preparedStatement.setString(3, regis.getCptn_email());
            preparedStatement.setString(4, regis.getCptn_number());
            preparedStatement.setString(5, regis.getMember_one());
            preparedStatement.setString(6, regis.getMember_two());
            preparedStatement.setString(7, regis.getMember_three());
            preparedStatement.setString(8, regis.getMember_four());
            preparedStatement.setString(9, regis.getMember_five());
            preparedStatement.setString(10, regis.getMember_six());
            preparedStatement.setString(11, regis.getMember_seven());
            preparedStatement.setString(12, regis.getRegistrationCode());
            preparedStatement.setDate(13, regis.getDate());
            preparedStatement.setInt(14, regis.getId());

            rowUpdated = preparedStatement.executeUpdate() > 0;
        }
        return rowUpdated;
    }

}
