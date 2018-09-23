package com.example.demo.models;

public class Order{

    private int oid;
    private String fullname;
    private String email;
    private String address1;
    private String address2;
    private int totalbill;

    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }


    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress1() {
        return address1;
    }

    public void setAddress1(String address1) {
        this.address1 = address1;
    }

    public String getAddress2() {
        return address2;
    }

    public void setAddress2(String address2) {
        this.address2 = address2;
    }

    public int getTotalbill() {
        return totalbill;
    }

    public void setTotalbill(int totalbill) {
        this.totalbill = totalbill;
    }
}
