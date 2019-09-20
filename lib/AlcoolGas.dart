import 'package:flutter/material.dart';

class AlcoolGas extends StatefulWidget {
  @override
  _AlcoolGasState createState() => _AlcoolGasState();
}

class _AlcoolGasState extends State<AlcoolGas> {
  /*Implementações*/

  /*controlers*/
  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();
  String _textoResultado = "";

  /*Calculos (backEnd)*/
  void _calcular() {
    double precoAlcool = double.tryParse(_controllerAlcool.text);
    double precoGasolina = double.tryParse(_controllerGasolina.text);

    if (precoAlcool == null || precoGasolina == null) {
      setState(() {
        _textoResultado =
            "Número inválido, digite números maiores que 0 e utilizando (.) ";
      });
    } else {
      /*
      * Se o preço do álcool divido pelo preço da gasolina
      * for >= a 0.7 é melhor abastecer com gasolina
      * senão é melhor utilizar álcool
      * */
      if ((precoAlcool / precoGasolina) >= 0.7) {
        setState(() {
          _textoResultado = "Melhor abastecer com gasolina";
        });
      } else {
        setState(() {
          _textoResultado = "Melhor abastecer com alcool";
        });
      }
      //_limparCampos();
    }
  }

  void _limparCampos(){
    _controllerGasolina.text = "";
    _controllerAlcool.text = "";
  }

  @override
  Widget build(BuildContext context) {
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
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    )),
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
                    onPressed: _calcular,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Text(
                      _textoResultado,
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
