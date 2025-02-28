import 'package:flutter/material.dart';
import 'package:imc_calculator/utils/calculator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() =>
  _HomeScreenState();
}

class _HomeScreenState extends State <HomeScreen> {
  final _pesoController = TextEditingController();
  final _alturaControler = TextEditingController();
  double? _resultadoImc;

  void _calcularimc() {
    double peso = double.parse(_pesoController.text);
    double altura = double.parse(_alturaControler.text);
      setState(() {
        _resultadoImc = calcularImc(peso, altura);
      });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora IMC", style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 133, 37, 128),fontWeight: FontWeight.w400)),
        centerTitle: true,
        bottom: PreferredSize(preferredSize: Size.fromHeight(40),
          child: Padding(padding: EdgeInsets.only(bottom: 8),
          child: Column( crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("(Índice de Massa Corpórea)",style: TextStyle(fontSize: 20,color: const Color.fromARGB(255, 133, 37, 128),fontWeight: FontWeight.w200)),
              Text("Olá, seja bem-vindo(a)", style: TextStyle(fontSize: 10,color:const Color.fromARGB(255, 133, 37, 128),fontStyle: FontStyle.italic)),
            ],
          )
          ),
        ),
      ),
      body: Padding(padding: EdgeInsets.all(16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [TextField(
        controller: _pesoController,
        decoration: InputDecoration(labelText: "Informe seu peso"),
        keyboardType: TextInputType.number,
      ),
      TextField(
        controller: _alturaControler,
        decoration: InputDecoration(labelText: "Informe sua altura"),
        keyboardType: TextInputType.number,
      ),
      SizedBox(height: 20,),
      ElevatedButton(onPressed: _calcularimc,
       child: Text("Calcular"),
      ),
      SizedBox(height: 20),
      Text (_resultadoImc != null 
        ? "Por favor, informe os valores."
        : "IMC:${_resultadoImc?.toStringAsFixed(2)}",style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 133, 37, 128)) ,
      ),
      ],
      ),
      ),
      backgroundColor: Color.fromRGBO(249, 182, 255, 1),
    );
  }
}