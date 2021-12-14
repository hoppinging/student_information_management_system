package com.example.random.entry;

public class Student {
    private String Sid;
    private int Power;
    private String Phone;
    private String name;
    private String QQ;

    public Student() {
    }

    public String getSid() {
        return Sid;
    }

    public void setSid(String sid) {
        Sid = sid;
    }

    public int getPower() {
        return Power;
    }

    public void setPower(int power) {
        Power = power;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String phone) {
        Phone = phone;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getQQ() {
        return QQ;
    }

    public void setQQ(String QQ) {
        this.QQ = QQ;
    }

    @Override
    public String toString() {
        return "Student{" +
                "Sid='" + Sid + '\'' +
                ", Power=" + Power +
                ", Phone='" + Phone + '\'' +
                ", name='" + name + '\'' +
                ", QQ='" + QQ + '\'' +
                '}';
    }
}
