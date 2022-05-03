package com.example.mapitsp.model;

import java.util.Date;

public class event {

    protected int id;
    protected String title;
    protected String status; //Open or Closed
    protected String type; // Individual or Group
    protected String location;
    protected String sport;
    protected String gender;
    protected Date date;
    protected String link;
    protected String registrationCode;

    public event(){}

    public event(int isID){this.id = isID;}

    public event(int id, String title, String status, String type, String location, String sport, String gender, Date date, String link, String registrationCode) {
        this.id = id;
        this.title = title;
        this.status = status;
        this.type = type;
        this.location = location;
        this.sport = sport;
        this.gender = gender;
        this.date = date;
        this.link = link;
        this.registrationCode = registrationCode;
    }

    public event(String title, String status, String type, String location, String sport, String gender, Date date, String link, String registrationCode) {
        this.title = title;
        this.status = status;
        this.type = type;
        this.location = location;
        this.sport = sport;
        this.gender = gender;
        this.date = date;
        this.link = link;
        this.registrationCode = registrationCode;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getSport() {
        return sport;
    }

    public void setSport(String sport) {
        this.sport = sport;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getRegistrationCode() {
        return registrationCode;
    }

    public void setRegistrationCode(String registrationCode) {
        this.registrationCode = registrationCode;
    }
}
