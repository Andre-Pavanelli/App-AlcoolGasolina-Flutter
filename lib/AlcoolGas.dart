import 'package:flutter/material.dart';

class AlcoolGas extends StatefulWidget {
  @override
  _AlcoolGasState createState() => _AlcoolGasState();
}

class _AlcoolGasState extends State<AlcoolGas> {
  @override
  Widget build(BuildContext context) {
    /*Implementações*/

    /*controlers*/
    TextEditingController _controllerAlcool = TextEditingController();
    TextEditingController _controllerGasolina = TextEditingController();

    return Scaffold(
        appBar: AppBar(
          title: Text("Álcool ou Gasolina"),
          backgroundColor: Colors.amber[300],
        ),
        body: Container(        
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Image.asset(
                    "images/alcoolGas.jpg",
                    height: 160,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      "Saiba qual a melhor opção para abastecimento do seu carro",
                      style:
                          TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                            ),
                      textAlign: TextAlign.center,
                      )
                    ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration:
                      InputDecoration(labelText: "Preço Álcool, ex: 1.59"),
                  style: TextStyle(fontSize: 16),
                  controller: _controllerAlcool,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration:
                      InputDecoration(labelText: "Preço Gasolina, ex: 4.29"),
                  style: TextStyle(fontSize: 16),
                  controller: _controllerGasolina,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: RaisedButton(
                    color: Colors.amber[300],
                    textColor: Colors.white,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Calcular",
                      style: TextStyle(fontSize: 16),
                    ),
                    onPressed: () {},
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Text(
                      "Resultado",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ))
              ],
            ),
          ),
        ));
  }
}
