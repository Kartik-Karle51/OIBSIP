package com.Demo;

import java.io.*;
import java.sql.*;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;


public class RegisterServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String email,password;
		email=request.getParameter("Rmail");
		password=request.getParameter("Rpass");
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/LoginAuthentication","root","Kartik@5151");
		Statement stmt=con.createStatement();
		int status=stmt.executeUpdate("insert into Login values('"+email+"','"+password+"')");
		if(status >0) {
			RequestDispatcher rd=request.getRequestDispatcher("success.html");
			rd.forward(request, response);
		}else {
			out.print("<html><body>");
			out.print("<h1>Something Went Wrong...Please Try Again Later!</h1>");
			out.print("<img src='unsuccess.jpg'>");
			out.print("</html></body>");
		}
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
