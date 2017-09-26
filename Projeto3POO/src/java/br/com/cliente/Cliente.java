package br.com.cliente;

import java.util.ArrayList;

public class Cliente {
    //Declaração de Atributos necessários
    private String nome;
    private String cpf;
    private String rg;
    private String email;
    private String celular;
    private String endereco;
    /*private String cep_endereco;//AO INFORMAR O CEP O SISTEMA AUTO COMPLETA OS DEMAIS CAMPOS DO FORMULÁRIO
    private String bairro_endereco;
    private String cidade_endereco;
    private String estado_endereco;
    private String numero_endereco;//COM EXCEÇÃO DO NÚMERO DA RESIDÊNCIA
    private String complemento_endereco;// E DO COMPLEMENTO*/
    
    
   
    
    public static ArrayList<Cliente> list;
    public static ArrayList<Cliente> getList(){
        if(list==null){
            list = new ArrayList<>();
            Cliente c1 = new Cliente();
            c1.setNome("Rafael");
            c1.setCpf("12345678907");
            c1.setRg("123456754");
            c1.setEmail("rafael.garcia@gmail.com");
            c1.setCelular("123456754");
            c1.setEndereco("121216754");
            
            list.add(c1);
            
        }
        return list;
    }
    
    public String getNome(){
        return nome;
    }
    
    public void setNome(String nome){
        this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }
    
    /*public String getCep_endereco() {
        return cep_endereco;
    }

    public void setCep_endereco(String cep_endereco) {
        this.cep_endereco = cep_endereco;
    }

    public String getBairro_endereco() {
        return bairro_endereco;
    }

    public void setBairro_endereco(String bairro_endereco) {
        this.bairro_endereco = bairro_endereco;
    }

    public String getCidade_endereco() {
        return cidade_endereco;
    }

    public void setCidade_endereco(String cidade_endereco) {
        this.cidade_endereco = cidade_endereco;
    }

    public String getEstado_endereco() {
        return estado_endereco;
    }

    public void setEstado_endereco(String estado_endereco) {
        this.estado_endereco = estado_endereco;
    }

    public String getNumero_endereco() {
        return numero_endereco;
    }

    public void setNumero_endereco(String numero_endereco) {
        this.numero_endereco = numero_endereco;
    }

    public String getComplemento_endereco() {
        return complemento_endereco;
    }

    public void setComplemento_endereco(String complemento_endereco) {
        this.complemento_endereco = complemento_endereco;
    }*/
    // Como vocês devem ter percebido os gets retornam os valores dos atributos de determinado objeto requisitado
    //Os sets inserem valores aos atributos de determinado objeto selecionado
    //O getList retorna a lista de todos os clientes armazenados
    
/*    public static ArrayList<Cliente> getList() {
        return list;
    }

    public static void setList(ArrayList<Cliente> list) {
        Cliente.list = list;
    }
    */
    public String getEmail(){
        return email;
    }
    public void setEmail(String email){
    this.email = email;
    }
   
}
