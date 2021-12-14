package com.example.random.dao.impl;

import com.example.random.dao.StudentRandomDao;
import com.example.random.entry.Student;

import java.sql.*;
import java.util.LinkedList;
import java.util.List;

public class StudentRandomDaoImpl implements StudentRandomDao {
    public Student selectStudentById(Connection conn, Integer Sid) {
        String sql = "select * from student where sid=" + "2020321101" + Sid.toString();
        Statement statement = null;
        ResultSet rs = null;
        Student result = new Student();
        try {
            statement = conn.createStatement();
            rs = statement.executeQuery(sql);
            if (rs.next()) {
                result.setPower(rs.getInt("power"));
                result.setPhone(rs.getString("phone"));
                result.setQQ(rs.getString("qq"));
                result.setName(rs.getString("name"));
                result.setSid(rs.getString("sid"));
            } else {
                return null;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            try {
                rs.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
            try {
                statement.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
        return result;
    }

    @Override
    public List<Student> selectStudentAll(Connection conn) {
        String sql = "select * from student";
        List<Student> list = new LinkedList<>();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            statement = conn.prepareStatement(sql);
            resultSet = statement.executeQuery();
            //解析resultSet，将对应的属性设置到user对象里
            while (resultSet.next()) {
                Student result = new Student();
                result.setPower(resultSet.getInt("power"));
                result.setPhone(resultSet.getString("phone"));
                result.setQQ(resultSet.getString("qq"));
                result.setName(resultSet.getString("name"));
                result.setSid(resultSet.getString("sid"));
                list.add(result);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            try {
                resultSet.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
            try {
                statement.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
        return list;
    }

    @Override
    public void reucePower(Connection conn, Integer Sid) {
        String sql = "select * from student where sid=" + "2020321101" + Sid.toString();
        Statement statement = null;
        ResultSet rs = null;
        Student result = new Student();
        try {
            statement = conn.createStatement();
            rs = statement.executeQuery(sql);
            if (rs.next()) {
                result.setPower(rs.getInt("power"));
            } else {
                return;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            try {
                rs.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
            try {
                statement.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
            sql = "update student set power =" + (result.getPower() - 1) + " where sid =" + "2020321101" + Sid.toString();
            try {
                statement = conn.createStatement();
               statement.executeUpdate(sql);
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            } finally {
                try {
                    rs.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                try {
                    statement.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }

            }
        }
    }

    @Override
    public void upPower(Connection conn, Integer Sid) {
        String sql = "select * from student where sid=" + "2020321101" + Sid.toString();
        Statement statement = null;
        ResultSet rs = null;
        Student result = new Student();
        try {
            statement = conn.createStatement();
            rs = statement.executeQuery(sql);
            if (rs.next()) {
                result.setPower(rs.getInt("power"));
            } else {
                return;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            try {
                rs.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
            try {
                statement.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
            sql = "update student set power =" + (result.getPower() + 1) + " where sid =" + "2020321101" + Sid.toString();
            try {
                statement = conn.createStatement();
                statement.executeUpdate(sql);
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            } finally {
                try {
                    rs.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                try {
                    statement.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }

            }
        }
    }
}
