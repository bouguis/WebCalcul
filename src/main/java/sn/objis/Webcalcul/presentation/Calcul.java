package sn.objis.Webcalcul.presentation;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sn.objis.Test.CalculMetier;

/**
 * Servlet implementation class Calcul
 */
public class Calcul extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Calcul() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Instentiation de service
		CalculMetier service = new CalculMetier();
		//Initialisation du resultat
		double resultat =0;
		//Recuperation de l'action
		String action = request.getParameter("action");
		if (action!=null) {
			double a = Double.parseDouble(request.getParameter("a"));
			double b = Double.parseDouble(request.getParameter("b"));
			
			if (action.equalsIgnoreCase("somme")) {
				resultat = service.Somme(a, b);
				
			}else {
				resultat = service.produit(a, b);
			}
			System.out.println(resultat);
			//on met le resultat dans un scope
			request.setAttribute("rst", resultat);
			
		}
		//redirection 
		RequestDispatcher rd = request.getRequestDispatcher("jsp/calcul.jsp");
		rd.forward(request , response);
	}

}
