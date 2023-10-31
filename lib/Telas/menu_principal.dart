import "package:flutter/material.dart";
import 'package:flutter_gymapp/Telas/lista_exercicios.dart';

class MenuPrincipal extends StatelessWidget {
   const MenuPrincipal({super.key});

   @override
   Widget build(BuildContext context){
     return Scaffold(
         backgroundColor: Colors.blueGrey,
         appBar: AppBar(
          title:const Text("GymApp")
         ,centerTitle: true,
           backgroundColor:Colors.blueGrey,
         shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
         ),

       body:Align(
         child: Column(
            mainAxisSize: MainAxisSize.min,
           children:[
             Container(
               margin: const EdgeInsets.only(top: 0),
                 child:const Text("Qual o treino de hoje?",style: TextStyle(
                 fontSize: 30,
                    fontWeight:FontWeight.bold,
                     color: Colors.white
               ),
              ),
             ),
             const SizedBox(height: 30),
             ElevatedButton(
               style:const ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.white30)),
               onPressed: (){Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => const ListaExercicioA()));},
                 child: const SizedBox(width:200,
                   child:Center(
                       child: Text("Treino A"),)
                   ,),
             ),
             const SizedBox(height: 60,),
             ElevatedButton(
                 style:const ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.white30)),
                 onPressed: (){},
                 child:const SizedBox(width:200,
                   child:Center(
                       child: Text("Treino B"),)
                   ,)
             ),
             const SizedBox(height: 60,),
             ElevatedButton(
                 style:const ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.white30)),
                 onPressed: (){},
                 child:const SizedBox(width:200,
                   child:Center(
                       child: Text("Treino C")
                      )
                   ,)
             ),
             const SizedBox(height: 60,),
           ])),
     );
  }

}
