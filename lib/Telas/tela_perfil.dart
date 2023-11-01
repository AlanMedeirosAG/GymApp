import 'package:flutter/material.dart';
import 'package:flutter_gymapp/Telas/imc_calculadora.dart';
import 'package:flutter_gymapp/Telas/menu_principal.dart';

class TelaPerfil extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text('Meu Perfil do GymApp'),
        centerTitle: true,
        backgroundColor:Colors.blueGrey,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30))),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white60,
        surfaceTintColor:Colors.blueGrey,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const  UserAccountsDrawerHeader(
              decoration:  BoxDecoration(color: Colors.blueGrey),
              accountName: Text("Seu Nome"),
              accountEmail: Text("seuemail@exemplo.com"),
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.person),
              ),
            ),
            ListTile(
              title: const Text('Treinos',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
              onTap: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MenuPrincipal()));},
            ),
            ListTile(
              title: const Text('Calculadora IMC',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
              onTap: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CalculadoraImc()));},
            ),
          ],
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
              Image.asset("assets/icone perfil.png",height:128),
            const SizedBox(height: 20),
                   const Text('Nome do Usuário',
                    style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,color: Colors.white
              ),
            ),
            const SizedBox(height: 20),
            const Text('Idade: 25 anos', style: TextStyle(
                   fontSize: 24,
                   fontWeight: FontWeight.bold,color: Colors.white
            )
           ),
            const SizedBox(height: 20),
            const Text('Altura: 175 cm' ,style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,color: Colors.white
             )
            ),
            const SizedBox(height: 20),
            const Text('Peso: 70 kg',style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,color: Colors.white
             )
             ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Adicione ação para editar perfil aqui
              },style: const ButtonStyle(
                backgroundColor:MaterialStatePropertyAll<Color>(Colors.white30)
            ),
              child: const Text('Editar Perfil')
            ),
          ]
         ),
        )
       );
      }
    }
