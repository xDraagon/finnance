package br.com.fiap.fintech.testes;

import java.util.List;
import java.util.Locale;

import br.com.fiap.fintech.Dao.DAOFactory;
import br.com.fiap.fintech.controller.ControllerFluxoCaixa;
import br.com.fiap.fintech.entity.Movimentacao;

public class Testes {

	public static void main(String[] args) {

		ControllerFluxoCaixa coltroller = new ControllerFluxoCaixa(1,1, new Locale("pt","BR") );

		List<Movimentacao> movimentacose = coltroller.getMovimentacoes();
		
		for (Movimentacao movimentacao : movimentacose) {
			System.out.println(movimentacao.getVl_movimentacao());
		}
		
	}

}
