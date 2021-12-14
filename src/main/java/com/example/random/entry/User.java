package com.example.random.entry;

public class User {
    private Integer uid;
    private String account;
    private String uname;
    private String password;
    private Integer limit;
    private byte[] portrail;

    public User() {
    }

    public User(Integer uid, String account, String uname, String password, Integer limit, byte[] portrail) {
        this.uid = uid;
        this.account = account;
        this.uname = uname;
        this.password = password;
        this.limit = limit;
        this.portrail = portrail;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getLimit() {
        return limit;
    }

    public void setLimit(Integer limit) {
        this.limit = limit;
    }


    public String getPortrail(){
        if(portrail == null) return "";
        return "data:image/png;base64,"+new String(portrail);
    }



    public void setPortrail(String portrail){
        this.portrail = portrail.getBytes();
    }


    //    public String register(){
//        StringBuilder stringBuilder=new StringBuilder(" ");
//        stringBuilder.append
//        return stringBuilder.toString();
//    }
    public String getQueryCondition() {
        StringBuilder stringBuilder = new StringBuilder("1=1");
        if (uid != null) {
            stringBuilder.append(" and id=" + uid);
        }
        if (uname != null) {
            stringBuilder.append(" and uname= '" + uname + "'");
        }
        if (account != null) {
            stringBuilder.append(" and account= '" + account + "'");
        }
        if (password != null) {
            stringBuilder.append(" and password= '" + password + "'");
        }
        if (limit != null) {
            stringBuilder.append(" and role= " + limit);
        }
        return stringBuilder.toString();
    }

    @Override
    public String toString() {
        return "User{" +
                "uid=" + uid +
                ", account='" + account + '\'' +
                ", uname='" + uname + '\'' +
                ", password='" + password + '\'' +
                ", limit=" + limit +
                '}';
    }

}


