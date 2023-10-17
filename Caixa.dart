import 'dart:io';

import './Cliente.dart';

void sacar(double val,Cliente cli) {
    if (val <=cli.saldo ) {
      cli.saldo -= val;
      print("-------------------------- ");
    print(" ");
  print("Seu saldo atual é R\$${cli.saldo}");
  print(" ");
    print("-------------------------- ");
    } else {
      print("Saldo insuficiente");
    }
  }
void depositar(double val,Cliente cli){
  cli.saldo+=val;
  print("-------------------------- ");
    print(" ");
  print("Seu saldo atual é R\$${cli.saldo}");
  print(" ");
    print("-------------------------- ");
}

void consultar(Cliente cli){
  print("-------------------------- ");
    print(" ");
  print("Seu saldo atual é R\$${cli.saldo}");
  print(" ");
    print("-------------------------- ");

}

void transferir(double val,Cliente cli1,Cliente cli2){
  if(val<=cli1.saldo){
    cli1.saldo-=val;
    cli2.saldo+=val;
    print("-------------------------- ");
    print(" ");
    print("Transferência realizada com sucesso!");
    print(" ");
    print("-------------------------- ");
    print("-------------------------- ");
    print(" ");
    print("Seu saldo atual é R\$${cli1.saldo}");
    print(" ");
    print("-------------------------- ");
  }else{
    print("-------------------------- ");
    print(" ");
    print("Saldo insuficiente");
     print(" ");
    print("-------------------------- ");
  }
}


List<Cliente> clientes = [
  Cliente(nome:'João', cpf:'1',saldo: 1000.0),
  Cliente(nome:'Maria', cpf:'2',saldo: 2000.0),
  Cliente(nome:'Pedro', cpf:'3',saldo:3000.0),
];
void main(){
  Cliente cli=new Cliente(nome:'',cpf:'',saldo:0);
  double val=0;
  int op=0;
  while(true){
     print("-------------------------- ");
    print(" ");
    print("Bem vindo ao banco Asimov Jr.");
  print(" ");
    print("-------------------------- ");
    print("-------------------------- ");
    print(" ");
  stdout.write("Vocẽ já é um cliente nosso? (s/n): ");
  
  String? res=stdin.readLineSync();
  if(res=='s'){

  
  while(true){
    print("-------------------------- ");
    print(" ");
      stdout.write("Digite seu cpf: ");
        
      String? id=stdin.readLineSync();
      for(int i=0;i<clientes.length;i++){
        if(clientes[i].cpf==id){
          cli=clientes[i];
          break;
        }else if(i==clientes.length-1){
          print("-------------------------- ");
    print(" ");
          print("CPF não encontrado");
            print(" ");
    print("-------------------------- ");
        }
    }
    if(cli.cpf!=''){
      break;
    }
  }
  print("-------------------------- ");
    print(" ");
  print("Seja bem vindo ${cli.nome}!");
   print(" ");
    print("-------------------------- ");
  
  print("1 - Sacar");
  print("-------------------------- ");
  print("2 - Depositar");
  print("-------------------------- ");
  print("3 - Transferir");
  print("-------------------------- ");
  print("4 - Consultar");
  print("-------------------------- ");
  print("5 - Sair");
  print("-------------------------- ");
  String? entrada=stdin.readLineSync();
  
  op=int.parse(entrada!);
  

  while(op!=5){
    
    switch(op){
      case 1:
       print("-------------------------- ");
    print(" ");
        stdout.write("Quantos reais você deseja sacar: ");
       
        String? entrada=stdin.readLineSync();
        
        val=double.parse(entrada!);

        print(" ");
        sacar(val,cli);
         print(" ");
    
        break;
      case 2:
        print("-------------------------- ");
    print(" ");
        stdout.write("Quantos reais você deseja depositar: ");
         print(" ");
    print("-------------------------- ");
        String? entrada=stdin.readLineSync();
       
        val=double.parse(entrada!);

        print(" ");
        depositar(val,cli);
         print(" ");
    
        break;
      case 3:
        Cliente cli2=new Cliente(nome:'',cpf:'',saldo:0);
        while(true){
          print("-------------------------- ");
    print(" ");
          stdout.write("Digite o cpf do destinatário: ");
           
          String? id=stdin.readLineSync();
          for(int i=0;i<clientes.length;i++){
            if(clientes[i].cpf==id){
              cli2=clientes[i];
              break;
            }else if(i==clientes.length-1){
              print("CPF não encontrado");
               print(" ");
    print("-------------------------- ");
            }
        }
        if(cli2.cpf!=''){
          break;
        }
        
        } 
        print("-------------------------- ");
        print(" ");
        stdout.write("Digite o valor que deseja transferir: ");
        
        String? entrada=stdin.readLineSync();
        val=double.parse(entrada!);
        print(" ");
        transferir(val, cli, cli2);
        print(" ");
        
      case 4:
        print("-------------------------- ");
        print(" ");
        consultar(cli);
        print(" ");
        print("-------------------------- ");
      default:
        print("-------------------------- ");
        print(" ");
        print("Opção inválida");
        print(" ");
        print("-------------------------- ");
    }
    print(" ");
     print("1 - Sacar");
     print("-------------------------- ");
      print("2 - Depositar");
      print("-------------------------- ");
      print("3 - Transferir");
      print("-------------------------- ");
      print("4 - Consultar");
      print("-------------------------- ");
      print("5 - Sair");
      print("-------------------------- ");
      String? entrada=stdin.readLineSync();
     
      op=int.parse(entrada!);
    
  }
}else{
  print("-------------------------- ");
        print(" ");
  stdout.write("Gostaria de criar uma conta? (s/n): ");
   
  String? res=stdin.readLineSync();
  if(res=='s'){
    print("-------------------------- ");
        print(" ");
    stdout.write("Digite seu nome: ");
     
    String? n=stdin.readLineSync();
    String nome=n!;
    print("-------------------------- ");
        print(" ");
    stdout.write("Digite seu cpf: ");
     
    String? c=stdin.readLineSync();
    String cpf=c!;
    
    clientes.add(Cliente(nome:nome,cpf:cpf,saldo:0.0));
    print("-------------------------- ");
    print(" ");
    print("Conta criada com sucesso!");
    print(" ");
    print("-------------------------- ");
  }else{
    print("-------------------------- ");
    print(" ");
    print("Obrigado por usar nossos serviços!");
    print(" ");
        print("-------------------------- ");
  }
}
  }
}