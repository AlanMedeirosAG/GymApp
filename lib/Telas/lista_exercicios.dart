import "package:flutter/material.dart";
import "package:flutter_gymapp/Telas/exercicio_tela.dart";

class ListaExercicioA extends StatefulWidget{
  const ListaExercicioA({super.key});

  @override
  State<ListaExercicioA> createState() => _ListaExercicio();
}

class _ListaExercicio extends State<ListaExercicioA> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title:const Text("Treino A"),
            centerTitle: true,
             backgroundColor:Colors.blueGrey,
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)))
        ),

        body:Padding(
           padding: const EdgeInsets.only(top:20),
           child:Column(
             crossAxisAlignment:CrossAxisAlignment.center,
             children:[
            Container(
              padding: const EdgeInsets.all(10),
              width: double.maxFinite,
               decoration:  BoxDecoration(
                color: Colors.white30,
                borderRadius: BorderRadius.circular(15.0),
               ),
               child: GestureDetector(onTap:(){Navigator.push(context,
                   MaterialPageRoute(builder: (context) => TelaExercicio()));},
               child: const Text("Puxada Alta: 4 series - 10 rep ",style:TextStyle(color:Colors.black),),
               )
            )
          ]
        ),
      )
    );
  }
}
