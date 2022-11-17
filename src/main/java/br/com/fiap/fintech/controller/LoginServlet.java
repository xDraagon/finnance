package br.com.fiap.fintech.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import br.com.fiap.fintech.Dao.DAOFactory;
import br.com.fiap.fintech.Dao.ContaUsuario.ContaUsuarioDao;
import br.com.fiap.fintech.entity.ContaUsuario;
import br.com.fiap.fintech.util.Function;


@WebServlet("/login")
/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@Override
	public void init() throws ServletException {
		super.init();
		dao = DAOFactory.getContaDAO();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try{
			String email = request.getParameter("email");
			String password = request.getParameter("password");	
			
			if(email == "emailBanco") {
				
			}
			
		}catch(DBException db) {
			db.printStackTrace();
			request.setAttribute("erro", "Erro ao entrar");
		}catch(Exception e){
			e.printStackTrace();
			request.setAttribute("erro","Por favor, valide os dados");
		}
		request.getRequestDispatcher("login.jsp").forward(request, response);
	}
}
