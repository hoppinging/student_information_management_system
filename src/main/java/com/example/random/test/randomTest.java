package com.example.random.test;

import com.example.random.dao.StudentRandomDao;
import com.example.random.dao.impl.StudentRandomDaoImpl;
import com.example.random.utils.JDBCUtil;

import java.sql.Connection;
import java.util.Random;

public class randomTest {
    static StudentRandomDao studentRandomDao = new StudentRandomDaoImpl();

    public static void main(String[] args) {
        Connection conn = JDBCUtil.getConnection();
        System.out.println("测试随即功能");
        System.out.println("第一位" +studentRandomDao.selectStudentById(conn, (int) (1 + Math.random() * 60)));
        System.out.println("第二位" +studentRandomDao.selectStudentById(conn, (int) (1 + Math.random() * 60)));
        System.out.println("第三位" +studentRandomDao.selectStudentById(conn, (int) (1 + Math.random() * 60)));
        studentRandomDao.reucePower(conn,40);
        System.out.println("测试减权功能"+studentRandomDao.selectStudentById(conn,40));
        studentRandomDao.upPower(conn,40);
        System.out.println("测试加权功能"+studentRandomDao.selectStudentById(conn,40));
        System.out.println("测试全输出功能");
        System.out.println(studentRandomDao.selectStudentAll(conn));
        JDBCUtil.release(conn);
    }
}
