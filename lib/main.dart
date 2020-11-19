import 'dart:convert';

import 'package:MeuProjeto/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(home: PaginaInicial()));
}

class PaginaInicial extends StatefulWidget {
  State<StatefulWidget> createState(){
    return Home();
  }
}

class Home1 extends State<PaginaInicial>{
  var temperatura;
  var tempoDescricao;
  var umidadeAr;
}

Tempo getTempo () async {
  http.Response response = await http.get('http://api.openweathermap.org/data/2.5/weather?q=Gaspar&Brazil&appid=https://home.openweathermap.org/http://api.openweathermap.org/data/2.5/weather?q=Gaspar&Brazil&appid=5d0ab1b934c380482e2dd08dae13a00f');
  var resultado = jsonDecode(response.body);

  setState(() {}
    this.temperatura=resultado['main']['temp'];
    this.tempoDescricao = resultado['weather'][0]['main'];
    this.velocidadeVento = resultado['wind']['speed'];
  )
  )
}

void initSate(){
  super.initState();
  this.getTempo();
}

class Home extends State<PaginaInicial> {
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Sr do Tempo"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            color: Colors.cyan[300],
            child: Text('Clima ' + 'TEMPESTADE', 
              style: TextStyle(fontSize: 30,)),
          )
          Container(
            color: Colors.cyan[300],
            child: Text('temperatura ' + 'MUITO QUENTE', 
              style: TextStyle(fontSize: 30,)),
          )
          Container(
            color: Colors.cyan[300],
            child: Text('Umidade do ar ' + 'Molhado', 
              style: TextStyle(fontSize: 30,)),
          )
        ],
      ),
      FloatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: Text('Crica'),
      )
    )
  }
}