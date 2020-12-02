package project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Login {
	//Connection conn;
	private static String jdbc="com.mysql.jdbc.Driver";
	private static String url="jdbc:mysql://localhost:3306/javapizza";
	static private Connection conn;
	private static String uid ="root";
	private static String pass = "";
	

	public void connect() throws ClassNotFoundException, SQLException {

		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/javapizza", "root", "");
	}

	public String login(String e_id, String pw) throws Exception {
		PreparedStatement ps = conn.prepareStatement("select * from test3 where e_id=? and pw=?");
		ps.setString(1, e_id);
		ps.setString(2, pw);
		ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			System.out.println("IN CORRRRRRRECYTTTTTTT");
			return "user";
		}
		else {
			ps = conn.prepareStatement("select *from test3 where un=? and ps=?");
			ps.setString(1, e_id);
			ps.setString(2, pw);
			rs = ps.executeQuery();
			if (rs.next())
				return "admin";
			else
				return "nop";

		}

	}

	public boolean insert(String fn, String ln, String dob, String gn, String lc, String cty,
			String state, String pin, String m_no, String e_id, String pw) throws SQLException {
		Statement stmnt = conn.createStatement();
		int rowcount = stmnt.executeUpdate("insert into test3 values ('" + fn + "', '" + ln
				+ "' ,'" + dob + "','" + gn + "', '" + lc + "', '" + cty + "' ,'" + state + "', '" + pin
				+ "','" + m_no + "', '" + e_id + "', '" + pw + "'   )");
		return true;
	}
}
