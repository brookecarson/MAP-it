package com.example.mapitsp.model;

import java.io.Serializable;
import java.sql.Date;

public class contactSub{

    protected int id;
    protected String name;
    protected String email;
    protected String message;
    protected Date date;
    protected String number;

    public contactSub(){}

    public contactSub(int isId) {
        this.id = isId;
    }

    public contactSub(String name, String email, String message, Date dateSub, String number) {
        super();
        this.name = name;
        this.email = email;
        this.message = message;
        this.date = dateSub;
        this.number = number;
    }

    public contactSub(int subID, String name, String email, String message, Date dateSub, String number) {
        super();
        this.id = subID;
        this.name = name;
        this.email = email;
        this.message = message;
        this.date = dateSub;
        this.number = number;
    }

    public int getId() {return id;}

    public void setId(int id) {this.id = id;}

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Date getDate() {return date;}

    public void setDate(Date dateSub) {
        this.date = dateSub;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }
}
