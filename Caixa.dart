import 'dart:io';

import './Cliente.dart';

void sacar(double val,Cliente cli) {
    if (val <=cli.saldo ) {
      cli.saldo -= val;
      print("Seu saldo atual é R\$${cli.saldo}");
    } else {
      print("Saldo insuficiente");
    }
  }
void depositar(double val,Cliente cli){
  cli.saldo+=val;
  print("Seu saldo atual é R\$${cli.saldo}");
}

void consultar(Cliente cli){
  print("Seu saldo atual é R\$${cli.saldo}");

}

void transferir(double val,Cliente cli1,Cliente cli2){
  if(val<=cli1.saldo){
    cli1.saldo-=val;
    cli2.saldo+=val;
    print("Transferência realizada com sucesso!");
  }else{
    print("Saldo insuficiente");
  }
}


List<Cliente> clientes = [
  Cliente(nome:'João', cpf:'123.456.789-00',saldo: 1000.0),
  Cliente(nome:'Maria', cpf:'987.654.321-00',saldo: 2000.0),
  Cliente(nome:'Pedro', cpf:'111.222.333-44',saldo:3000.0),
];
void main(){
  Cliente cli=new Cliente(nome:'',cpf:'',saldo:0);
  double val=0;
  int op=0;
  while(true){print("Bem vindo ao banco Asimov Jr.");
  print(" ");
  stdout.write("Vocẽ já é um cliente nosso? (s/n): ");
  String? res=stdin.readLineSync();
  if(res=='s'){

  
  stdout.write("Digite seu cpf: ");
  String? id=stdin.readLineSync();
  for(int i=0;i<clientes.length;i++){
    if(clientes[i].cpf==id){
      cli=clientes[i];
    }
  }
  print(" ");
  print("Seja bem vindo ${cli.nome}!");
  print(" ");
  print("1 - Sacar");
  print("2 - Depositar");
  print("3 - Transferir");
  print("4 - Consultar");
  print("5 - Sair");
  String? entrada=stdin.readLineSync();
  
  op=int.parse(entrada!);
  

  while(op!=5){
    
    switch(op){
      case 1:
        print("-------------------------- ");
        stdout.write("Quantos reais você deseja sacar: ");
        String? entrada=stdin.readLineSync();
        
        val=double.parse(entrada!);

        print(" ");
        sacar(val,cli);
        print("-------------------------- ");
        break;
      case 2:
        print("-------------------------- ");
        stdout.write("Quantos reais você deseja depositar: ");
        String? entrada=stdin.readLineSync();
       
        val=double.parse(entrada!);

        print(" ");
        depositar(val,cli);
        print("-------------------------- ");
        break;
      case 3:
        stdout.write("Digite o cpf do destinatário: ");
        String? id=stdin.readLineSync();
        
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
     print("1 - Sacar");
      print("2 - Depositar");
      print("3 - Transferir");
      print("4 - Consultar");
      print("5 - Sair");
      String? entrada=stdin.readLineSync();
     
      op=int.parse(entrada!);
    
  }
}else{
  stdout.write("Gostaria de criar uma conta? (s/n): ");
  String? res=stdin.readLineSync();
  if(res=='s'){
    stdout.write("Digite seu nome:");
    String? n=stdin.readLineSync();
    String nome=n!;
    stdout.write("Digite seu cpf");
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
    break;
  }
}
  }
}