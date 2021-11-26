package com.Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Department;

public class GetCollegeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	List<Department> dep=Arrays.asList(new Department("college1",Arrays.asList("ECE","EEE","CS","IT","MECH")), 
			new Department("college2",Arrays.asList("B.COM", "B.SC Maths","B.A","B.TEch")),
			new Department("college3",Arrays.asList("DataScience", "AI","Cyber Security","BlockChain")));
	
   
     
    public GetCollegeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 
		  request.setAttribute("collegeName",dep);
	    
		RequestDispatcher requ = request.getRequestDispatcher("collegeList.jsp");
		requ.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}
	
}