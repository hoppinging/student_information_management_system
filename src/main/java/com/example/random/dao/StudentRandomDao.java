package com.example.random.dao;

import com.example.random.entry.Student;

import java.sql.Connection;
import java.util.List;

public interface StudentRandomDao {
    public Student selectStudentById(Connection conn, Integer Sid);
    public List<Student> selectStudentAll(Connection conn);

    public void reucePower(Connection conn, Integer Sid);
    public void upPower(Connection conn, Integer Sid);
}
