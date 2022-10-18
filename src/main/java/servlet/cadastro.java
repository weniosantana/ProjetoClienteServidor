package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import db.DB;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class cadastro
 */
@WebServlet("/cadastro")
public class cadastro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public cadastro() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		List<String> Testes = new ArrayList<>();
		String teste = "";
		Connection conn = null;
		Statement st = null;
		ResultSet rs = null;
		try {
			String te =request.getParameter("cat");
			conn = DB.getConnection();
			
			st = conn.createStatement();
			
			
			if(te.equals("Arquitetura")) {
				rs = st.executeQuery("SELECT titulo FROM tblivros WHERE categoria LIKE 'Arquitetura'");
			}
			if(te.equals("Desgin")) {
				rs = st.executeQuery("SELECT titulo FROM tblivros WHERE categoria LIKE 'Desgin'");
			}
			if(te.equals("Infor")) {
				rs = st.executeQuery("SELECT titulo FROM tblivros WHERE categoria LIKE 'Informática'");
			}
			if(te.equals("Litbras")) {
				rs = st.executeQuery("SELECT titulo FROM tblivros WHERE categoria LIKE 'Literatura brasileira'");
			}
			
			if(te.equals("Litinf")) {
				rs = st.executeQuery("SELECT titulo FROM tblivros WHERE categoria LIKE 'Literatura infantil'");
			}
			
			if(te.equals("Lituniv")) {
				rs = st.executeQuery("SELECT titulo FROM tblivros WHERE categoria LIKE 'Literatura universal'");
			}
			
			if(te.equals("Musart")) {
				rs = st.executeQuery("SELECT titulo FROM tblivros WHERE categoria LIKE 'Música e arte'");
			}
				while(rs.next()) {
				
				Testes.add(rs.getString("titulo"));
				
				}
				
			
		}catch(SQLException e){
			e.printStackTrace();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		 	PrintWriter out = response.getWriter();
		 	
		    response.setContentType("text/html");
		    
		    
		    
		    for (int i = 0; i <= Testes.size() - 1; i++) {
				   out.println(Testes.get(i) + "<br>"); 
				
				    // usa o atual e proximo
				    // ...
				}
		    
	}

}
