import 'package:calculator_app/views/repository_view/bloc/calculator_bloc.dart';
import 'package:calculator_app/views/widgets/buttons_widget.dart';
import 'package:calculator_app/views/widgets/text_field_widget.dart';
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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const SizedBox(height: 20.0),
            TextFieldWidget(
              controllerFirstNum: _controllerFirstNum,
              text1: 'First Number',
              text2: 'Enter First Number',
            ),
            TextFieldWidget(
              controllerFirstNum: _controllerFirstNum,
              text1: 'Second Number',
              text2: 'Enter Second Number',
            ),
            const SizedBox(height: 10.0),
            ButtonsWidget(
                controllerFirstNum: _controllerFirstNum,
                controllerSecondNum: _controllerSecondNum,
                calculatorBloc: calculatorBloc),
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
                        color: Color.fromARGB(255, 127, 54, 244)),
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
