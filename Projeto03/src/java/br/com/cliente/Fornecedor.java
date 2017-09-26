package br.com.cliente;

import java.util.ArrayList;

public class Fornecedor {
    //Declaração de Atributos necessários
    private String cod;
    private String nome;
    private String razao;
    private String cnpj;
    private String email;
    private String telefone;
    private String endereco;
    /*private String cep_endereco;//AO INFORMAR O CEP O SISTEMA AUTO COMPLETA OS DEMAIS CAMPOS DO FORMULÁRIO
    private String bairro_endereco;
    private String cidade_endereco;
    private String estado_endereco;
    private String numero_endereco;//COM EXCEÇÃO DO NÚMERO DA RESIDÊNCIA
    private String complemento_endereco;// E DO COMPLEMENTO*/
    
    
   
    
    public static ArrayList<Fornecedor> list;
    public static ArrayList<Fornecedor> getList(){
        if(list==null){
            list = new ArrayList<>();
            Fornecedor f1 = new Fornecedor();
            f1.setCod("0");
            f1.setNome("Fulano");
            f1.setRazao("Arroz");
            f1.setCnpj("123456754");
            f1.setEmail("rafael.garcia@gmail.com");
            f1.setTelefone("11 994213400");
            f1.setEndereco("marechal arroz");
            list.add(f1);
            
            Fornecedor f2 = new Fornecedor();
            f2.setCod("1");
            f2.setNome("Fulano");
            f2.setRazao("Arroz");
            f2.setCnpj("123456754");
            f2.setEmail("rafael.garcia@gmail.com");
            f2.setTelefone("11 994213400");
            f2.setEndereco("marechal arroz");
            list.add(f2);
            
            Fornecedor f3 = new Fornecedor();
            f3.setCod("2");
            f3.setNome("Fulano");
            f3.setRazao("Arroz");
            f3.setCnpj("123456754");
            f3.setEmail("rafael.garcia@gmail.com");
            f3.setTelefone("11 994213400");
            f3.setEndereco("marechal arroz");
            list.add(f3);
        }
        return list;
    }

    public String getCod() {
        return cod;
    }

    public void setCod(String cod) {
        this.cod = cod;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getRazao() {
        return razao;
    }

    public void setRazao(String razao) {
        this.razao = razao;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }
    
   
   
    
    
    
  
}
