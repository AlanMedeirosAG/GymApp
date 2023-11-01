import 'package:flutter/material.dart';

class CalculadoraImc extends StatefulWidget{
  const CalculadoraImc({super.key});


  @override
  State<CalculadoraImc> createState() => _CalcularImc();
}

class _CalcularImc extends State<CalculadoraImc> {

  double peso = 0.0;
  double altura = 0.0;
  double imc = 0.0;
  String valor = "0.0" ;

  void calcularIMC() {
    if (peso > 0 && altura > 0) {
      setState(() {
        imc = peso / (altura * altura);
        valor = imc.toStringAsFixed(2);
      });
    }
  }
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
          title:const Text("Calculadora IMC"),
          centerTitle: true,
          backgroundColor:Colors.blueGrey,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)))
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Text('Seu IMC é: $valor',
                style: const  TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30,
                )
            ),
            Text('Classificação: ${classificarIMC(imc)}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30,
               )
            ),
            const SizedBox(height: 40,),

            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Peso (kg)',
                  labelStyle: TextStyle(
                  fontWeight:FontWeight.bold,
                  color: Colors.white)
              ),
              onChanged: (value) {
                setState(() {
                  peso = double.tryParse(value) ?? 0.0;
                });
              },
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Altura (m)',
                  labelStyle: TextStyle(
                  fontWeight:FontWeight.bold,
                  color: Colors.white)),
              onChanged: (value) {
                setState(() {
                  altura = double.tryParse(value) ?? 0.0;
                });
              },
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: calcularIMC,
                style: const ButtonStyle(
                backgroundColor:MaterialStatePropertyAll<Color>(Colors.white30),
            ),
              child: const Text('Calcular IMC'),
            ),
         ]
        ),
        ),
      );
  }

  String classificarIMC(double imc) {
    if (imc < 18.5) {
      return 'Abaixo do peso';
    } else if (imc >= 18.5 && imc < 24.9) {
      return 'Peso normal';
    } else if (imc >= 25.0 && imc < 29.9) {
      return 'Sobrepeso';
    } else if (imc >= 30.0 && imc < 34.9) {
      return 'Obesidade Grau I';
    } else if (imc >= 35.0 && imc < 39.9) {
      return 'Obesidade Grau II';
    } else {
      return 'Obesidade Grau III';
    }
  }
}
