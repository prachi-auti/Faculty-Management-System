package com.avcoe.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.avcoe.model.Faculty;        // ✅ Correct package for Faculty
import com.avcoe.model.FacultyRepo;   // ✅ Correct package for FacultyRepo

public class AddFacultyServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String dept = request.getParameter("department");

        try {
            Faculty faculty = new Faculty(Integer.parseInt(id), name, dept);
            FacultyRepo repo = new FacultyRepo();
            repo.insert(faculty);

            response.sendRedirect("view.jsp");

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error adding faculty: " + e.getMessage());
        }
    }
}
