package com.demo;

import java.io.IOException;
import java.util.*;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web.User;

/**
 * Servlet implementation class DemoServlet
 */
@WebServlet("/DemoServlet")
public class DemoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DemoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("Do Get");
		System.out.println("*****"+request.getParameter("email"));
		
		List<User>listUser=null;
//		User usr=new User();
//		usr.setName("Bvrit");
//		usr.setJob("S/w");
//		usr.setSalary(1000);
		
//		
//		listUser=new ArrayList<User>();
//		listUser.add(usr);
		mysql cont=new mysql();
		listUser=cont.getStudent();
		for(User usr:listUser){
			System.out.println(usr.getName());
			
		}
		if(listUser!= null && !listUser.isEmpty()) {
			request.setAttribute("listUser", listUser);
			request.setAttribute("myname","Aksh");
			RequestDispatcher rd=request.getRequestDispatcher("UserList.jsp");
			rd.include(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Email "+request.getParameter("email"));
		doGet(request, response);
	}
		
		
}
