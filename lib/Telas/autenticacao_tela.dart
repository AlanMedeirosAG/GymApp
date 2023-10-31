import "package:flutter/material.dart";
import "package:flutter_gymapp/Telas/menu_principal.dart";

class AutenticacaoTela extends StatefulWidget {
   const AutenticacaoTela({super.key});

  @override
  State<AutenticacaoTela> createState() => _AutenticacaoTelaState();
}

class _AutenticacaoTelaState extends State<AutenticacaoTela> {
  bool queroentrar = true;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body:
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:[
              Image.asset("assets/Icon.png",height: 128),
              const Text("GymApp",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color:Colors.white),
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  label:Text("Email:",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.white)),
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  label: Text("Senha",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.white))
                  ,),
                obscureText:true,
                ),
               Visibility(
                 visible:!queroentrar,
                 child:Column(
                   children:  [
                   TextFormField(
                     decoration: const InputDecoration(
                       label: Text("Confirme Senha:",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.white))
                       ,)
                   ),
                     TextFormField(
                       decoration: const InputDecoration(
                         label:Text("Nome:",style: TextStyle(fontWeight: FontWeight.bold,color:Colors.white)),
                       ),
                     ),
                   ],
                 ),
               ),

               const SizedBox(
                 height: 32
                 ,),
               ElevatedButton(onPressed: (){Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => const MenuPrincipal()));}, child: Text((queroentrar)? "Entrar" : "Cadastrar")
                ,style: const ButtonStyle(
                       backgroundColor:MaterialStatePropertyAll<Color>(Colors.white30)
                   )
               ),
              const Divider(),
              TextButton(onPressed: (){
                setState(() {
                  queroentrar = !queroentrar;
              });
                },
                child:  Text((queroentrar)? "Ainda não está cadastrado?Cadastre-se!" : "Já tem uma conta?Entre",style:const TextStyle(color:Colors.black),)
                ,)
            ],
          ),
        ),
      )
    );
  }
}
