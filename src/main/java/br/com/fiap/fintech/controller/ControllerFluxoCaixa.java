package br.com.fiap.fintech.controller;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;

import br.com.fiap.fintech.Dao.DAOFactory;
import br.com.fiap.fintech.entity.ContaUsuario;
import br.com.fiap.fintech.entity.Movimentacao;
import br.com.fiap.fintech.util.Function;

public class ControllerFluxoCaixa {

	private Integer cd_usuario;
	private Integer cd_conta;

	Locale 	 local;
	Calendar today = Calendar.getInstance();

	
	public ControllerFluxoCaixa() {}
	
	public ControllerFluxoCaixa(Integer cd_usuario, Integer cd_conta, Locale local) {
		
		this.cd_usuario = cd_usuario;
		this.cd_conta   = cd_conta;
		this.local      = local;
	}
	
		
	
	public String getMonth() {
		return Function.DateToMonthInFull(today.getTime(), local);
	}
	
	
	public ContaUsuario getContaUsuario() {
		return DAOFactory.getContaDAO().getByID(cd_usuario, cd_conta);
	}
	
	
	public String getSaldoConta() {
		Double value = getContaUsuario().getVl_saldo();
		return Function.DoubleToCurrency(value, local);
	}
	
	
	public List<Movimentacao> getMovimentacoes() {
		
		Calendar date_from = Calendar.getInstance();
		date_from.add(Calendar.DAY_OF_MONTH, -(today.get(Calendar.DAY_OF_MONTH)-1));
		date_from.add(Calendar.HOUR_OF_DAY, -today.get(Calendar.HOUR_OF_DAY));
		date_from.add(Calendar.MINUTE, -today.get(Calendar.MINUTE));
		date_from.add(Calendar.SECOND, -today.get(Calendar.SECOND));

		return DAOFactory.getMovimentacaoDAO().getAll_ContaByDate(getContaUsuario(), date_from.getTime(), today.getTime());
	}
	
	
	public List<String> checkRemaining(Integer count){
		
		List<String> remaining = new ArrayList<String>();
		
		if (count < 5) {
			
			for (int x = count; x < 5; x++) {
				remaining.add("Sem Dados...");
			}
		}
		
		return remaining;
	}
	
		
}
