import 'dart:io';

import './Cliente.dart';

//Cliente depositar(double val,Cliente cli){
  
//}



//List<Cliente> clientes;

void main(){
  int op=0;
  print("Bem vindo ao banco Asimov Jr.");
  print(" ");
  print("Vocẽ já é um cliente nosso? (s/n)");
  String? res=stdin.readLineSync();
  if(res=='s'){

  
  print("Digite seu cpf")
  print("1 - Sacar");
  print("2 - Depositar");
  print("3 - Transferir");
  print("4 - Consultar");
  print("5 - Sair");
  String? entrada=stdin.readLineSync();
  if(entrada!=null){
  op=int.parse(entrada);
  }

  while(op!=5){
    
    /*switch(op){
      case 1:
        //fn sacar
      case 2:
        //fn depositar
      case 3:
        //fn transferir
      case 4:
        //fn consultar
      case 5
        //fn criar conta
     
    }*/
     print("1 - Sacar");
      print("2 - Depositar");
      print("3 - Transferir");
      print("4 - Consultar");
      print("5 - Sair");
      String? entrada=stdin.readLineSync();
      if(entrada!=null){
      op=int.parse(entrada);
    }
  }
}else{
  print("Gostaria de criar uma conta? (s/n)");

}
}