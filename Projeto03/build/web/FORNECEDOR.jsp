<%-- 
    Documento: CLIENTE
    Criado em: 25/09/2017, 20:33:20
    Autores: Luciana e Rodrigo
    Tema: Cadastro de Fornecedores
--%>
<%@page import="br.com.cliente.Fornecedor"%><!--IMPORTANDO A CLASSE CLIENTE ATRAVÉS DA DIRETIVA IMPORT-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html lang="pt-br">
	<meta charset="UTF-8">
	<head>
		<title>Formulário Fornecedor</title>
		<link rel="stylesheet" href="folha de estilos"/>
	</head>
	<body>
           <%
           try{
               //Caso o sistema capture o parametro remove ao submeter o formulário
            if(request.getParameter("remove")!=null){
                int i = Integer.parseInt(request.getParameter("index"));
                //O sistema busca no arrayList o indice do registro requisitado e remove do array
                Fornecedor.getList().remove(i);
            }
            else if(request.getParameter("cadastrar")!=null){
                //Caso o sistema capture o parametro cadastrar
                    String cod = request.getParameter("cod"); //Capturamos os valores do campos do formulário e 
                    String nome = request.getParameter("nome");//Capturamos os valores do campos do formulário e 
                    String razao = request.getParameter("razao");//atribuimos aos atributos
                    String cnpj = request.getParameter("cnpj");
                    String email = request.getParameter("email");
                    String telefone = request.getParameter("telefone");
                    String endereco = request.getParameter("endereco");
                               
               Fornecedor f= new Fornecedor();//Criamos um objeto do tipo cliente
                    f.setCod(cod);
                    f.setNome(nome);//E setamos, ou seja, inserimos valores aos atributos do objetos instanciado.No caso, objeto c
                    f.setRazao(razao);
                    f.setCnpj(cnpj);
                    f.setEmail(email);
                    f.setTelefone(telefone);
                    f.setEndereco(endereco);
                    
                Fornecedor.getList().add(f);//Aqui nós buscamos o arrayList na memória e enviamos o objeto e seus atributos para o armazenamento
                response.sendRedirect(request.getRequestURI());
            } 
            else if(request.getParameter("alterar")!=null){
                //Caso o sistema capture o parametro alterar
                //buscar linha que tem o código
            
                    String cod = request.getParameter("cod"); //Capturamos os valores do campos do formulário e 
                    String nome = request.getParameter("nome");//Capturamos os valores do campos do formulário e 
                    String razao = request.getParameter("razao");//atribuimos aos atributos
                    String cnpj = request.getParameter("cnpj");
                    String email = request.getParameter("email");
                    String telefone = request.getParameter("telefone");
                    String endereco = request.getParameter("endereco");
                 
                  
                  //Nesse for, percorremos todas as posições do arraylist em busca do cliente que possui o codigo igual ao
                  //codigo informado no formulário
                  //Se existir um campo com o mesmo código, nós removemos a linha inteira
                  //e substituimos por uma linha com as novas informações
                  for (int a=0;a<Fornecedor.getList().size();a++){
                      
                      if(Fornecedor.getList().get(a).getCod().equals(cod)){//procurar na lista na linha(index) a, o código cod
                        Fornecedor fo = new Fornecedor();    
                    fo.setCod(cod);
                    fo.setNome(nome);//E setamos, ou seja, inserimos valores aos atributos do objetos instanciado.No caso, objeto c
                    fo.setRazao(razao);
                    fo.setCnpj(cnpj);
                    fo.setEmail(email);
                    fo.setTelefone(telefone);
                    fo.setEndereco(endereco);
                        //Cliente.getList().remove(a);//remover linha
                        //Cliente.getList().add(a,d);//Na mesma linha, adicionar as informações do novo objeto
                        
                        Fornecedor.getList().set(a,fo);//Na mesma linha, adicionar as informações do novo objeto
                      }
                  }
                   
                 
                }
            else{
           
           System.out.println("erro de comando!"); 
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
        						<label for="razao">Razao></label>
							<input type="text" name="razao" maxlength="11" required/>
						</fieldset>
						<fieldset>
                					<label for="cnpj">CNPJ></label>
                        				<input type="text" name="cnpj" required/>
						</fieldset>
						<fieldset>
							<label for="email">E-mail></label>
                                                        <input type="e-mail" name="email" required/>
						</fieldset>
						<fieldset>
                                			<label for="telefone"> Telefone / celular></label>
							<input type="tel" maxlength="11" name="telefone" required/>
						</fieldset>
						<fieldset>
                                        		<!--preenchimento manual-->
                                                	<label for="endereco">Endereço></label>
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
                <th>Razao</th>
                <th>CNPJ</th>
                <th>Email</th>
                <th>Telefone</th>
                <th>Endereco</th>
                <th>Exclusão</th>
                 <th>Exibição</th>
           </tr>
           <%try{%>
            <%int i=0;%>
           <% for (Fornecedor c: Fornecedor.getList()){%><!--foreach-->
           <tr>
            <td><%=i%></td>
            <td><%=c.getCod()%></td>
            <td><%= c.getNome()%></td>
            <td><%= c.getRazao()%></td>
            <td><%= c.getCnpj()%></td>
            <td><%= c.getEmail()%></td>
            <td><%= c.getTelefone()%></td>
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