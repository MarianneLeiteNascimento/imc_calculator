import 'package:test/test.dart';
import 'package:imc_calculator/utils/calculator.dart';

void main (){
    test ("Deve realizar o cálculo de IMC corretamente.", (){
      expect((calcularImc(50, 1.57)),equals(20.28479857195018));
    });
}