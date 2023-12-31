package br.com.binatur.factory;

import java.sql.Connection;
import java.sql.DriverManager;


/*Este arquivo - Java - é uma implementação de uma "fábrica de conexões" de banco de dados MySQL
*para um banco de dados chamado "binatur".
*/ 
public class ConnectionFactory {
	
	//Nome do usuário do mysql
	private static final String USERNAME = "root";
	
	//Senha do banco
	private static final String PASSWORD = "";
	
	//Caminho do banco de dados, porta, nome do banco de dados
	private static final String DATABASE_URL = "jdbc:mysql://localhost:3306/binatur_crud";
	
	/*
	 * Conexão com o banco de dados
	 */
	public static Connection createConnectionToMySQL() throws Exception {
		//Faz com que a classe seja carregada pela JVM
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		//Cria a conexão com o banco de dados
		Connection connection = DriverManager.getConnection(DATABASE_URL, USERNAME, PASSWORD);
		
		return connection;
	}
	
	public static void main(String[] args) throws Exception {
		
		//Recupera uma conexão com o banco de dados
		Connection con = createConnectionToMySQL();
			
		//Testar se a conexão é nula
			if(con!=null ) {
				System.out.println("Conexão obtida com sucesso!");
				con.close();
			}
	}
}
