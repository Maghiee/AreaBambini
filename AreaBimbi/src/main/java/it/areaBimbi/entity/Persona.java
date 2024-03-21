package it.areaBimbi.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "persona")
public class Persona {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;

	@Column(name = "codice", length = 16, unique = true, nullable = false)
	private String codice;

	@Column(name = "nome", length = 45, nullable = false)
	private String nome;

	@Column(name = "cognome", length = 45, nullable = false)
	private String cognome;

	@Column(name = "eta", length = 45, nullable = false)
	private String eta;

	@Column(name = "genitore", length = 45, nullable = false)
	private String genitore;

	@Column(name = "numero", length = 45, nullable = false)
	private String numero;

	@Column(name = "nota", length = 45, nullable = false)
	private String nota;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCodice() {
		return codice;
	}

	public void setCodice(String codice) {
		this.codice = codice;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCognome() {
		return cognome;
	}

	public void setCognome(String cognome) {
		this.cognome = cognome;
	}

	public String getEta() {
		return eta;
	}

	public void setEta(String eta) {
		this.eta = eta;
	}

	public String getGenitore() {
		return genitore;
	}

	public void setGenitore(String genitore) {
		this.genitore = genitore;
	}

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}

	public String getNota() {
		return nota;
	}

	public void setNota(String nota) {
		this.nota = nota;
	}

	@Override
	public String toString() {
		return "Persona [id=" + id + ", codice=" + codice + ", nome=" + nome + ", cognome=" + cognome
				+ ", eta=" + eta + ", genitore=" + genitore + ", numero=" + numero + ", nota=" + nota + "]";
	}

}
