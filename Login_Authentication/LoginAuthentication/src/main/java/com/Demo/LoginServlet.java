package com.Demo;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.sql.*;

public class LoginServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	PrintWriter out=response.getWriter();
	String email1,password1;
	email1=request.getParameter("mail");
	password1=request.getParameter("pass");
	try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/LoginAuthentication","root","Kartik@5151");
	Statement stmt=con.createStatement();
	ResultSet rs=stmt.executeQuery("Select * from Login where email ='"+email1+"' and password = '"+password1+"'");
	if(rs.next()) {

		RequestDispatcher rd=request.getRequestDispatcher("success.html");
		rd.forward(request, response);
	}else {
		out.print("<html><body>");
		out.print("<h1>Invalid User!</h1>");
		out.print("<img src='unsuccess.jpg'>");
		out.print("</html></body>");
	}
	
	}catch(Exception e) {
		e.printStackTrace();
	}
	}

}
