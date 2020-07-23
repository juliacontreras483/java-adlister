package com.codeup.adlister.controllers;
import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) {
        // TODO: show the registration form
        request.getRequestDispatcher("WEB-INF/register.jsp");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) {
        // TODO: ensure the submitted information is valid
        // TODO: create a new user based off of the submitted information
        // TODO: if a user was successfully created, send them to their profile

//        long id = Long.parseLong(request.getParameter("id"));
//        String username =  request.getParameter("username");
//        String email = request.getParameter("email");
//        String password =  request.getParameter("password");
//
//        User user = new User(username, email, password);
//        DaoFactory.getUserDao().insert(username, email, password);

        User user = new User(
                1,
                request.getParameter("username"),
                request.getParameter("email"),
                request.getParameter("password")
        );
        DaoFactory.getUsersDao().insert(user);
        response.sendRedirect("/login");
    }
}
