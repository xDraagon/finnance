package br.com.fiap.fintech.entity;

public class Categoria {

	private Integer cd_categoria;
	private String  nm_categoria;

	public Categoria() {}
	
	public Categoria(Integer cd_categoria, String nm_categoria) {
		this.cd_categoria = cd_categoria;
		this.nm_categoria = nm_categoria;
	}
	
	
	public Integer getCd_categoria() {
		return cd_categoria;
	}

	public void setCd_categoria(Integer cd_categoria) {
		this.cd_categoria = cd_categoria;
	}

	public String getNm_categoria() {
		return nm_categoria;
	}

	public void setNm_categoria(String nm_categoria) {
		this.nm_categoria = nm_categoria;
	}
	
	public String toString() {
		return "Categoria:\n[cd_categoria = "+cd_categoria+",\n"
					      +" nm_categoria = "+nm_categoria+"]";
	}
	
}
