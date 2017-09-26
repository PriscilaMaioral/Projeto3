<%-- 
    Documento: CLIENTE
    Criado em: 25/09/2017, 20:33:20
    Autores: Luciana e Priscila
    Tema: Cadastro de Clientes
--%>
<%@page import="br.com.cliente.Cliente"%><!--IMPORTANDO A CLASSE CLIENTE ATRAVÉS DA DIRETIVA IMPORT-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html lang="pt-br">
	<meta charset="UTF-8">
	<head>
		<title>Formulário Cliente</title>
		<link rel="stylesheet" href="folha de estilos"/>
	</head>
	<body>
           <%
           try{
               //Caso o sistema capture o parametro remove ao submeter o formulário
            if(request.getParameter("remove")!=null){
                int i = Integer.parseInt(request.getParameter("index"));
                //O sistema busca no arrayList o indice do registro requisitado e remove do array
                Cliente.getList().remove(i);
            }
            else if(request.getParameter("cadastrar")!=null){
                //Caso o sistema capture o parametro cadastrar
                    String cod = request.getParameter("cod"); //Capturamos os valores do campos do formulário e 
                    String nome = request.getParameter("nome");//Capturamos os valores do campos do formulário e 
                    String cpf = request.getParameter("cpf");//atribuimos aos atributos
                    String rg = request.getParameter("rg");
                    String email = request.getParameter("email");
                    String celular = request.getParameter("celular");
                    String endereco = request.getParameter("endereco");
                               
               Cliente c= new Cliente();//Criamos um objeto do tipo cliente
                    c.setCod(cod);
                    c.setNome(nome);//E setamos, ou seja, inserimos valores aos atributos do objetos instanciado.No caso, objeto c
                    c.setCpf(cpf);
                    c.setRg(rg);
                    c.setEmail(email);
                    c.setCelular(celular);
                    c.setEndereco(endereco);
                    
                Cliente.getList().add(c);//Aqui nós buscamos o arrayList na memória e enviamos o objeto e seus atributos para o armazenamento
                response.sendRedirect(request.getRequestURI());
            } 
            else if(request.getParameter("alterar")!=null){
                //Caso o sistema capture o parametro alterar
                //buscar linha que tem o código
            
                    String cod = request.getParameter("cod"); //Capturamos os valores do campos do formulário e 
                    String nome = request.getParameter("nome");//Capturamos os valores do campos do formulário e 
                    String cpf = request.getParameter("cpf");//atribuimos aos atributos
                    String rg = request.getParameter("rg");
                    String email = request.getParameter("email");
                    String celular = request.getParameter("celular");
                    String endereco = request.getParameter("endereco");
                 
                  
                  //Nesse for, percorremos todas as posições do arraylist em busca do cliente que possui o codigo igual ao
                  //codigo informado no formulário
                  //Se existir um campo com o mesmo código, nós removemos a linha inteira
                  //e substituimos por uma linha com as novas informações
                  for (int a=0;a<Cliente.getList().size();a++){
                      
                      if(Cliente.getList().get(a).getCod().equals(cod)){//procurar na lista na linha(index) a, o código cod
                        Cliente d = new Cliente();    
                        d.setCod(cod);
                        d.setNome(nome);
                        d.setCpf(cpf);
                        d.setRg(rg);
                        d.setEmail(email);
                        d.setCelular(celular);
                        d.setEndereco(endereco);
                        //Cliente.getList().remove(a);//remover linha
                        //Cliente.getList().add(a,d);//Na mesma linha, adicionar as informações do novo objeto
                        
                        Cliente.getList().set(a,d);//Na mesma linha, adicionar as informações do novo objeto
                      }
                  }
                   
                 
                }
            else{
           
           System.out.println("oi"); 
            }    
           }catch(Exception ex){%>
               <div> Erro ao processar o form.</div>
           <%}%>
            
            <header>
		<h1><title>Cadastro Clientes</title></h1>
		<p><strong>Preencha corretamente os campos abaixo: </strong></p>
		<nav class="main-menu" id="main-menu">
		<section class="panel-form">
			<div class="container">
					<form method="POST">
                                                <fieldset>
							<label for="cod">Código></label>
							<input type="text" name="cod" required autofocus/>
						</fieldset>
                                                <fieldset>
							<label for="nome">Nome></label>
							<input type="text" name="nome" required autofocus/>
						</fieldset>		
						<fieldset>
        						<label for="cpf">CPF></label>
							<input type="text" name="cpf" maxlength="11" required/>
						</fieldset>
						<fieldset>
                					<label for="rg">RG></label>
                        				<input type="text" name="rg" required/>
						</fieldset>
						<fieldset>
							<label for="email">E-mail></label>
                                                        <input type="e-mail" name="email" required/>
						</fieldset>
						<fieldset>
                                			<label for="celular"> Telefone / celular></label>
							<input type="tel" maxlength="11" name="celular" required/>
						</fieldset>
						<fieldset>
                                        		<!--preenchimento manual-->
                                                	<label>Endereço></label>
							<input type="text" maxlength="30" name="endereco" required/>
						</fieldset>
	
                                            <input type="submit" name="cadastrar"/><!--AO SUBMETER O FORMULÁRIO O SISTEMA CHAMARÁ O MÉTODO CORRESPONDENTE AO VALUE cadastrar-->
					
                                           
                <input type="submit" name="alterar" value="Alterar"/>
                </form>
            </td>
                                        </form>
				</div>
			</section>
                                <h2>Lista</h2>
        <table border="1">
            <tr>
                <th>Índice</th>
                <th>Código</th>
                <th>Nome</th>
                <th>CPF</th>
                <th>RG</th>
                <th>Email</th>
                <th>Telefone</th>
                <th>Endereco</th>
                <th>Exclusão</th>
                 <th>Exibição</th>
           </tr>
           <%try{%>
            <%int i=0;%>
           <% for (Cliente c: Cliente.getList()){%><!--foreach-->
           <tr>
            <td><%=i%></td>
            <td><%=c.getCod()%></td>
            <td><%= c.getNome()%></td>
            <td><%= c.getCpf()%></td>
            <td><%= c.getRg()%></td>
            <td><%= c.getEmail()%></td>
            <td><%= c.getCelular()%></td>
            <td><%= c.getEndereco()%></td>
            <td>
                <form method="POST">
                <input type="hidden" name="index" value="<%=i++%>"/>
                <input type="submit" name="remove" value="Excluir"/>
                </form>
            </td>
             <td>
                <form method="POST">
                <input type="hidden" name="index" value="<%=i%>"/>
                <input type="submit" name="exibir" value="Exibir"/>
                </form>
            </td>
          </tr>
           
           <%}%>
           <%}catch(Exception ex){%>
           <tr>
               <td colspan="5">
                   Erro ao carregar a lista: <%=ex.getMessage()%>
               </td>
           </tr>
           <%}%>    
        </table>
			</nav>
			<a href="#main-menu">Voltar ao topo</a>
		</header>
        
        
        </body>
</html>