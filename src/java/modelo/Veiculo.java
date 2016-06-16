/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author Qualidade
 */
public class Veiculo {
    private int id;
    private String placa;
    private double capacidade; 
    private int codTipo;
    private int codMotorista;
    private String nomeTipo;
    private String nomeMotorista;

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the placa
     */
    public String getPlaca() {
        return placa;
    }

    /**
     * @param placa the placa to set
     */
    public void setPlaca(String placa) {
        this.placa = placa;
    }

    /**
     * @return the capacidade
     */
    public double getCapacidade() {
        return capacidade;
    }

    /**
     * @param capacidade the capacidade to set
     */
    public void setCapacidade(double capacidade) {
        this.capacidade = capacidade;
    }

    /**
     * @return the codTipo
     */
    public int getCodTipo() {
        return codTipo;
    }

    /**
     * @param codTipo the codTipo to set
     */
    public void setCodTipo(int codTipo) {
        this.codTipo = codTipo;
    }

    /**
     * @return the codMotorista
     */
    public int getCodMotorista() {
        return codMotorista;
    }

    /**
     * @param codMotorista the codMotorista to set
     */
    public void setCodMotorista(int codMotorista) {
        this.codMotorista = codMotorista;
    }

    /**
     * @return the nomeTipo
     */
    public String getNomeTipo() {
        return nomeTipo;
    }

    /**
     * @param nomeTipo the nomeTipo to set
     */
    public void setNomeTipo(String nomeTipo) {
        this.nomeTipo = nomeTipo;
    }

    /**
     * @return the nomeMotorista
     */
    public String getNomeMotorista() {
        return nomeMotorista;
    }

    /**
     * @param nomeMotorista the nomeMotorista to set
     */
    public void setNomeMotorista(String nomeMotorista) {
        this.nomeMotorista = nomeMotorista;
    }
    
    
    
   
}
