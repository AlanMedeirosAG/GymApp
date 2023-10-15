import 'package:flutter/material.dart';
import 'package:flutter_gymapp/models/exercicio_modelo.dart';

class TelaExercicio extends StatelessWidget {
     TelaExercicio({super.key});

  Exercicio exercicioModelo = Exercicio(
      id: "EX001",
      nome: "Puxada alta",
      treino: "treino - A",
      comofazer: "Sentado de frente ao aparelho com os braços extendidos,puxe em direção ao peito dobrando os cotovelos.");

  @override
  Widget build(BuildContext context){
        return Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
              title:  Column(
                  children:[
                    Text(exercicioModelo.nome,style:const TextStyle(fontWeight:FontWeight.bold,fontSize: 22)),
                    Text(exercicioModelo.treino,style:const TextStyle(fontWeight:FontWeight.bold)),
              ]),centerTitle: true,
                 backgroundColor:Colors.blueGrey,
                 shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)))),

          floatingActionButton: FloatingActionButton(onPressed: (){("Foi clicado");},
          child: const Icon(Icons.add),
          ),
          body: Container(
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,borderRadius: BorderRadius.circular(16)
            ),
            child: ListView(
              children:[SizedBox(
                height:250,
                child:Row(
                    mainAxisAlignment:MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: (){},
                        child:const Text("Enviar foto"),
            ),
                ElevatedButton(onPressed: (){},
                 child: const Text("Tirar foto")
                  ,)
            ])),

                const SizedBox(height: 8,),
              const Divider(color:Colors.white),
              const Text("Como fazer: ",
                  style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize:18)),
                Text(exercicioModelo.comofazer),
              ]
              ,),
          )
        );
    }
}