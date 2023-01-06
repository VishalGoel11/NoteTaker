package com.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Helper.FactoryProvider;
import com.NoteTaker.Note;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public SaveNoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		response.setContentType("text/html");
		String title= request.getParameter("title");
		String notes=request.getParameter("content");
		SessionFactory factory = FactoryProvider.getSessionFactory();
		Session session= factory.openSession();
		Note note =new Note(title,notes,new Date());
		Transaction tx=session.beginTransaction();
		session.save(note);
		tx.commit();
		factory.close();
		PrintWriter out=response.getWriter();
		out.println("<div style='height: 100vh' ;display: flex; align-item: 'center' justify-content: 'column'>");
		out.println("<h1 style='text-align: center'>Your Notes are Submitted </h1><br>");
		out.println("<h3 style='text-align: center'> ID Generated ="+note.getId()+"</h3>");
		out.println("</div>");
		FactoryProvider.closeSessionFactory();
		}catch(Exception e) {
//			e.printStackTrace();
			PrintWriter out= response.getWriter();
			out.println("Id generated for yu already exist . Try Again.");
		}
		
	}

}
