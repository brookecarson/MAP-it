package com.example.mapitsp.model;

import java.sql.Date;

public class registration {

    protected int id;
    protected String grp_name;
    protected String cptn_name;
    protected String cptn_email;
    protected String cptn_number;
    protected String member_one;
    protected String member_two;
    protected String member_three;
    protected String member_four;
    protected String member_five;
    protected String member_six;
    protected String member_seven;
    protected String registrationCode;
    protected Date date;

    public registration(){}

    public registration(int id, String grp_name, String cptn_name, String cptn_email, String cptn_number, String member_one, String member_two, String member_three, String member_four, String member_five, String member_six, String member_seven, String registrationCode, Date date) {
        this.id = id;
        this.grp_name = grp_name;
        this.cptn_name = cptn_name;
        this.cptn_email = cptn_email;
        this.cptn_number = cptn_number;
        this.member_one = member_one;
        this.member_two = member_two;
        this.member_three = member_three;
        this.member_four = member_four;
        this.member_five = member_five;
        this.member_six = member_six;
        this.member_seven = member_seven;
        this.registrationCode = registrationCode;
        this.date = date;
    }

    public registration(String grp_name, String cptn_name, String cptn_email, String cptn_number, String member_one, String member_two, String member_three, String member_four, String member_five, String member_six, String member_seven, String registrationCode, Date date) {
        this.grp_name = grp_name;
        this.cptn_name = cptn_name;
        this.cptn_email = cptn_email;
        this.cptn_number = cptn_number;
        this.member_one = member_one;
        this.member_two = member_two;
        this.member_three = member_three;
        this.member_four = member_four;
        this.member_five = member_five;
        this.member_six = member_six;
        this.member_seven = member_seven;
        this.registrationCode = registrationCode;
        this.date = date;
    }

    public registration(int id) {
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getGrp_name() {
        return grp_name;
    }

    public void setGrp_name(String grp_name) {
        this.grp_name = grp_name;
    }

    public String getCptn_name() {
        return cptn_name;
    }

    public void setCptn_name(String cptn_name) {
        this.cptn_name = cptn_name;
    }

    public String getCptn_email() {
        return cptn_email;
    }

    public void setCptn_email(String cptn_email) {
        this.cptn_email = cptn_email;
    }

    public String getCptn_number() {
        return cptn_number;
    }

    public void setCptn_number(String cptn_number) {
        this.cptn_number = cptn_number;
    }

    public String getMember_one() {
        return member_one;
    }

    public void setMember_one(String member_one) {
        this.member_one = member_one;
    }

    public String getMember_two() {
        return member_two;
    }

    public void setMember_two(String member_two) {
        this.member_two = member_two;
    }

    public String getMember_three() {
        return member_three;
    }

    public void setMember_three(String member_three) {
        this.member_three = member_three;
    }

    public String getMember_four() {
        return member_four;
    }

    public void setMember_four(String member_four) {
        this.member_four = member_four;
    }

    public String getMember_five() {
        return member_five;
    }

    public void setMember_five(String member_five) {
        this.member_five = member_five;
    }

    public String getMember_six() {
        return member_six;
    }

    public void setMember_six(String member_six) {
        this.member_six = member_six;
    }

    public String getMember_seven() {
        return member_seven;
    }

    public void setMember_seven(String member_seven) {
        this.member_seven = member_seven;
    }

    public String getRegistrationCode() {
        return registrationCode;
    }

    public void setRegistrationCode(String registrationCode) {
        this.registrationCode = registrationCode;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}
