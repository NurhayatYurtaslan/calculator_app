import 'package:calculator_app_bloc/src/blocs/calculator_bloc/calculator_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator with Bloc',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (context) => CalculatorBloc(),
        child: HomePage(),
      ),
    );
  }
}