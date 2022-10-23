package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.DB;

/**
 * Servlet implementation class mostrarLiv
 */
@WebServlet("/mostrarLiv")
public class mostrarLiv extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public mostrarLiv() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<String> sele = new ArrayList<>();
		Connection conn = null;
		Statement st1 = null;
		PreparedStatement st = null;

		ResultSet rs = null;
		try {
			String cod =request.getParameter("codlivroMos");
			conn = DB.getConnection();
			
			
			
			st = conn.prepareStatement("SELECT * FROM bdlivraria.tblivros WHERE (`codlivro` = ?)");
			st.setString(1, cod);
			rs = st.executeQuery();
		 
				while(rs.next()) {
				
					sele.add(rs.getString("titulo"));
					sele.add(rs.getString("autor"));
					sele.add(rs.getString("categoria"));
					sele.add(Float.toString(rs.getFloat("valor")));
				}
				
				PrintWriter out = response.getWriter();
			    response.setContentType("text/html");
			    
			    out.println("<!DOCTYPE html>");
			    out.println("<html>");
			    out.println("<head>");
			    out.println("<meta charset=\"utf-8\">");
			    out.println("<title>Teste</title>");
			    out.println("<style>");
			    out.println("body {margin: 0; backgroud-color: #f5f2e9; background-image: url('fundo.jpg');}");   
			    out.println("div {");   
			    out.println("height: 100px;");
			    out.println("text-align:center;");
			    out.println("font-size:30px;");
			    out.println("margin-top:80px;");
			    out.println("margin-left:80px;");
			    out.println("margin-right:80px;");
			    out.println("border-radius: 40px;");
			    out.println("padding-top: 2%;");
			    out.println("padding-bottom: 25%;");
			    out.println("background-color: #c7b79f;");
			    out.println("border: 1px solid black;");
			    out.println("}");
			    out.println("</style>");
			    out.println("</head>");
			    out.println("<body>");
			    out.println("<div>");
			    if(sele.size() != 0){
			    	
			    	out.print("<h1>Dados do livro:</h1>");
			    	for (int i = 0; i <= sele.size() - 1; i++) {
						   out.println(sele.get(i) + "<br>"); 
						}
			    }else{
			    	out.println("O livro não existe!");
			    }
			    out.println("<form action='index.jsp'><br>	<input class='btn' type='submit' value='VOLTAR'> </form>");
			    out.println("</div>");
			    out.println("</body>");
			    out.println("</html>");
		}catch(SQLException e){
			e.printStackTrace();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		 	
	
	
	}

}
