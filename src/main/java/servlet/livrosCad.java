package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.DB;

/**
 * Servlet implementation class livrosCad
 */
@WebServlet("/livrosCad")
public class livrosCad extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public livrosCad() {
        super();
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		Connection conn = null;
		Statement st1 = null;
		PreparedStatement st = null;
		ResultSet rs = null;
		
		try {
			int codlivro = Integer.parseInt(request.getParameter("codlivro"));
			String titulo =request.getParameter("titulo");
			String autor =request.getParameter("autor");
			String categoria =request.getParameter("categoria");
			float valor = Float.parseFloat(request.getParameter("valor"));
			
			
			
			conn = DB.getConnection();
			
			st = conn.prepareStatement(
					"Insert into tblivros (codlivro, titulo, autor, categoria, valor) values (?,?,?,?,?)"
					);
			
			st.setInt(1, codlivro);
			st.setString(2, titulo);
			st.setString(3, autor);
			st.setString(4, categoria);
			st.setFloat(5, valor);
			
			st.executeUpdate();
						
			
			
		}catch(SQLException e){
			e.printStackTrace();
			
		}catch (ClassNotFoundException e) {
			e.printStackTrace();
		}finally {
			
		};
	
	
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
	    out.println("Livro Adicionado!");
	    out.println("<form action='index.jsp'><br>	<input class='btn' type='submit' value='VOLTAR'> </form>");
	    out.println("</div>");
	    out.println("</body>");
	    out.println("</html>");	

	    
	    
	    
	}

}
