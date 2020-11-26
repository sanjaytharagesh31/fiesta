

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.tools.javac.util.List;

/**
 * Servlet implementation class AdminHomeServlet
 */
@WebServlet("/adminHome")
public class AdminHomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminHomeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		ArrayList<ArrayList<String>> anns = new ArrayList<ArrayList<String>>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/sys","root","root");
			String select_announcements = "select * from fiesta.table_announcement";
			PreparedStatement stmt = con.prepareStatement(select_announcements);
			ResultSet rst = stmt.executeQuery();
			int cnt = 0;
			while (rst.next()) {
				ArrayList<String> temp = new ArrayList<String>();
				temp.add(rst.getInt(1)+"");
				temp.add(rst.getString(2));
				temp.add(rst.getString(3));
				temp.add(rst.getInt(4)+"");
				cnt += 1;
			}			
		}
		catch(Exception e) {
			System.out.println(e);
			System.exit(1);
		}
//		request.setAttribute("announcements", anns);
//		request.setAttribute("announcements", "ann");
//		getServletConfig().getServletContext().getRequestDispatcher("Admin/admin_home.jsp").forward(request,response);
//		request.setAttribute("announcements", anns); 
		response.sendRedirect("Admin/admin_home.jsp");
//		request.getRequestDispatcher("Admin/admin_home.jsp").forward(request, response); 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}