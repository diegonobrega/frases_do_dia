import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Frases do Dia",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "A pressa é a inimiga da perfeição",
    "A corda sempre arrebenta do lado mais fraco",
    "Água mole em pedra dura tanto bate até que fura",
    "Águas passadas não movem moinho",
    "Amigos, amigos, negócios à parte",
    "Cada macaco no seu galho",
    "Cão que ladra não morde",
    "De médico e louco, todo mundo tem um pouco",
    "Deus ajuda a quem cedo madruga",
    "De grão em grão, a galinha enche o papo",
    "Devagar se vai longe",
    "Diga com quem anda que lhe direi quem és",
    "Esmola demais até santo desconfia",
    "Há males que vêm para bem",
    "Mais vale um pássaro na mão do que dois voando",
    "Mente vazia, oficina do diabo",
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);
    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do Dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          //width: double.infinity,
          // decoration: BoxDecoration(
          //     border: Border.all(width: 3, color: Colors.amber)
          // ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("images/logo.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Colors.black
                ),
              ),
              RaisedButton(
                child: Text(
                  "Nova Frase",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
                color: Colors.green,
                onPressed: _gerarFrase,
              )
            ],
          ),
        ),
      ),
    );
  }
}
