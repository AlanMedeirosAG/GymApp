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

         body: Container(
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.blueGrey,borderRadius: BorderRadius.circular(16)
            ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children:[
                Image.asset("assets/puxada alta.jpg",height: 128),
                const Divider(color: Colors.white30),
                const Text("Como fazer: ",
                    style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize:18)),
                      Text(exercicioModelo.comofazer),
                    const SizedBox(height: 10),
                    const Text("Quantidade: ",
                        style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize:18)),
                      const Text("4 series - 10 repetições"),
              ]),
            ),
          );
         }
       }
