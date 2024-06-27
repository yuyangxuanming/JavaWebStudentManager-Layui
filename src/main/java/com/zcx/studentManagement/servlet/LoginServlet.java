package com.zcx.studentManagement.servlet;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.zcx.studentManagement.dao.AdminDao;
import com.zcx.studentManagement.entity.Administrator;
import com.zcx.studentManagement.entity.BaseResponse;
import com.zcx.studentManagement.utils.RequestUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(urlPatterns = "/Login") //使用该注解后就不需要在web.xml文件中声明servlet了
public class LoginServlet extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // 调用DAO层的方法查询数据库
        AdminDao adminDao = new AdminDao();
        List<Administrator> admin = adminDao.getAdministratorByName(username);

        if (admin != null) {
            // 登录成功，跳转到index.jsp
            request.getSession().setAttribute("admin", admin);
            response.sendRedirect("index.jsp");
        } else {
            // 登录失败，返回错误信息
            request.setAttribute("error", "用户名或密码错误");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
