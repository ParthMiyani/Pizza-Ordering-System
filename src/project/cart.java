package project;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class cart
 */
@WebServlet("/cart")
public class cart extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public cart() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int i = 0;
		String size;
		String j;
		ArrayList<String> pid = new ArrayList<String>();
		ArrayList<String> qty = new ArrayList<String>();
		HttpSession session1 = request.getSession(false);
		response.setContentType("text/html");
		PrintWriter wr = response.getWriter();
		i = Integer.parseInt(request.getParameter("id"));
		j = request.getParameter("qty");
		size = request.getParameter("typ");
		//System.out.println(j + size);
		if (session1 != null) {
			switch (i) {
			case 1:
				pid = (ArrayList<String>) session1.getAttribute("order");
				qty = (ArrayList<String>) session1.getAttribute("quantity");
				if (size.equals("L")) {
					pid.add("211511");
					qty.add(request.getParameter("qty"));
					session1.setAttribute("order", pid);
					session1.setAttribute("quantity", qty);
				} else if (size.equals("M")) {
					pid.add("565436");
					qty.add(request.getParameter("qty"));
					session1.setAttribute("order", pid);
					session1.setAttribute("quantity", qty);
				} else {
					pid.add("523116");
					qty.add(request.getParameter("qty"));
					session1.setAttribute("order", pid);
					session1.setAttribute("quantity", qty);
				}
				wr.println("<html><body><h3>THANK YOU</h3>");
				wr.println("<form action=\"v_1.jsp\">Your order has been added <input type=submit value=back></form");
				wr.println("</body></html>");
				break;
			case 2:
				pid = (ArrayList<String>) session1.getAttribute("order");
				qty = (ArrayList<String>) session1.getAttribute("quantity");
				if (size.equals("L")) {
					pid.add("536531");
					qty.add(request.getParameter("qty"));
					session1.setAttribute("order", pid);
					session1.setAttribute("quantity", qty);
				} else if (size.equals("M")) {
					pid.add("542445");
					qty.add(request.getParameter("qty"));
					session1.setAttribute("order", pid);
					session1.setAttribute("quantity", qty);
				} else {
					pid.add("351624");
					qty.add(request.getParameter("qty"));
					session1.setAttribute("order", pid);
					session1.setAttribute("quantity", qty);
				}
				wr.println("<html>><body>");
				wr.println("<form action=\"v_2.jsp\">Your order has been added <input type=submit value=back></form");
				wr.println("</body></html>");
				break;
			default:
				break;

			}
		}
	}

}
