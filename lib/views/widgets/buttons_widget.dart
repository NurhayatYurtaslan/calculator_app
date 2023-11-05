import 'package:calculator_app/views/repository_view/bloc/calculator_bloc.dart';
import 'package:flutter/material.dart';

class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({
    super.key,
    required TextEditingController controllerFirstNum,
    required TextEditingController controllerSecondNum,
    required this.calculatorBloc,
  })  : _controllerFirstNum = controllerFirstNum,
        _controllerSecondNum = controllerSecondNum;

  final TextEditingController _controllerFirstNum;
  final TextEditingController _controllerSecondNum;
  final CalculatorBloc calculatorBloc;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            child: const Text(
              '+',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            onPressed: () {
              if (_controllerFirstNum.text.isNotEmpty &&
                  _controllerSecondNum.text.isNotEmpty) {
                num num1 = num.parse(_controllerFirstNum.text);
                num num2 = num.parse(_controllerSecondNum.text);
                calculatorBloc.add(AddEvent(num1: num1, num2: num2));
              }
            },
          ),
        ),
        const SizedBox(width: 8.0),
        Expanded(
          child: ElevatedButton(
            child: const Text(
              '-',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            onPressed: () {
              if (_controllerFirstNum.text.isNotEmpty &&
                  _controllerSecondNum.text.isNotEmpty) {
                num num1 = num.parse(_controllerFirstNum.text);
                num num2 = num.parse(_controllerSecondNum.text);
                calculatorBloc.add(SubtractEvent(num1: num1, num2: num2));
              }
            },
          ),
        ),
        const SizedBox(width: 8.0),
        Expanded(
          child: ElevatedButton(
            child: const Text(
              'x',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            onPressed: () {
              if (_controllerFirstNum.text.isNotEmpty &&
                  _controllerSecondNum.text.isNotEmpty) {
                num num1 = num.parse(_controllerFirstNum.text);
                num num2 = num.parse(_controllerSecondNum.text);
                calculatorBloc.add(MultiplyEvent(num1: num1, num2: num2));
              }
            },
          ),
        ),
        const SizedBox(width: 8.0),
        Expanded(
          child: ElevatedButton(
            child: const Text(
              '/',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            onPressed: () {
              if (_controllerFirstNum.text.isNotEmpty &&
                  _controllerSecondNum.text.isNotEmpty) {
                num num1 = num.parse(_controllerFirstNum.text);
                num num2 = num.parse(_controllerSecondNum.text);
                calculatorBloc.add(DivideEvent(num1: num1, num2: num2));
              }
            },
          ),
        ),
      ],
    );
  }
}
