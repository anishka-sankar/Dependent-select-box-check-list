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
	List<Department> dep=Arrays.asList(new Department("college1",Arrays.asList("ECE","EEE")), 
			new Department("college2",Arrays.asList("CS","IT")),
			new Department("college3",Arrays.asList("CS","IT","MECH")));
	List<String>  department= Arrays.asList("ECE","EEE","CS","IT","MECH");
		List<String> col1=Arrays.asList("ECE","EEE");
			
   
     
    public GetCollegeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 
		  request.setAttribute("collegeName",dep);
		  request.setAttribute("depName",department);
		  request.setAttribute("col1",col1);
		RequestDispatcher requ = request.getRequestDispatcher("collegeList.jsp");
		requ.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}
	
}