package estudiojuridico;

import clientes.Cliente;
/*
 * public Cliente(
			String nombre,
			String apellido,
			long cuit,
			long dni,
			String nombreUsuario,
			String password,
			String email,
			String domicilio
			){
 * */
public class TestCliente{
	public static void main(String[] args) {
		
	
	Cliente cliente=new Cliente("juan","perez",1,2,"usr","pass","email","domcilio");
	System.out.println(cliente);
	}	
	

}
