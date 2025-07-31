package com.avcoe.controller;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

import com.avcoe.model.FacultyRepo;

public class DeleteFacultyServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        FacultyRepo repo = new FacultyRepo();
        repo.delete(id);

        response.sendRedirect("delete.jsp");
    }
}
