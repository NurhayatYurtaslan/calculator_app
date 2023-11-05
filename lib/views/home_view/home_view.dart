
import 'package:calculator_app/views/repository_view/bloc/calculator_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  final TextEditingController _controllerFirstNum = TextEditingController();
  final TextEditingController _controllerSecondNum = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final calculatorBloc = BlocProvider.of<CalculatorBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator with Bloc'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                const SizedBox(height: 20.0),
                TextField(
                  controller: _controllerFirstNum,
                  decoration: const InputDecoration(
                      labelText: 'First Number',
                      hintText: 'Enter First Number'),
                  style: const TextStyle(fontSize: 20),
                  keyboardType: TextInputType.number,
                ),
                TextField(
                  controller: _controllerSecondNum,
                  decoration: const InputDecoration(
                      labelText: 'Second Number',
                      hintText: 'Enter Second Number'),
                  style: const TextStyle(fontSize: 20),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 10.0),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        child: const Text(
                          '+',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          if (_controllerFirstNum.text.isNotEmpty &&
                              _controllerSecondNum.text.isNotEmpty) {
                            num num1 = num.parse(_controllerFirstNum.text);
                            num num2 = num.parse(_controllerSecondNum.text);
                            calculatorBloc
                                .add(AddEvent(num1: num1, num2: num2));
                          }
                        },
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    Expanded(
                      child: ElevatedButton(
                        child: const Text(
                          '-',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          if (_controllerFirstNum.text.isNotEmpty &&
                              _controllerSecondNum.text.isNotEmpty) {
                            num num1 = num.parse(_controllerFirstNum.text);
                            num num2 = num.parse(_controllerSecondNum.text);
                            calculatorBloc
                                .add(SubtractEvent(num1: num1, num2: num2));
                          }
                        },
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    Expanded(
                      child: ElevatedButton(
                        child: const Text(
                          'x',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          if (_controllerFirstNum.text.isNotEmpty &&
                              _controllerSecondNum.text.isNotEmpty) {
                            num num1 = num.parse(_controllerFirstNum.text);
                            num num2 = num.parse(_controllerSecondNum.text);
                            calculatorBloc
                                .add(MultiplyEvent(num1: num1, num2: num2));
                          }
                        },
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    Expanded(
                      child: ElevatedButton(
                        child: const Text(
                          '/',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          if (_controllerFirstNum.text.isNotEmpty &&
                              _controllerSecondNum.text.isNotEmpty) {
                            num num1 = num.parse(_controllerFirstNum.text);
                            num num2 = num.parse(_controllerSecondNum.text);
                            calculatorBloc
                                .add(DivideEvent(num1: num1, num2: num2));
                          }
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                BlocBuilder(
                  bloc: calculatorBloc,
                  builder: (context, state) {
                    if (state is CalculatorResult) {
                      return Text(
                        'Result: ${state.result.toStringAsPrecision(3)}',
                        style: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      );
                    } else {
                      return const Text(
                        'Something went wrong',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      );
                    }
                  },
                ),
              ]),
        ),
      ),
    );
  }
}