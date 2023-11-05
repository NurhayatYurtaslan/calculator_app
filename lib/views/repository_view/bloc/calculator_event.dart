part of 'calculator_bloc.dart';

abstract class CalculatorEvent {}

class AddEvent extends CalculatorEvent {
  final num num1;
  final num num2;
  AddEvent({required this.num1, required this.num2});
}

class SubtractEvent extends CalculatorEvent {
  final num num1;
  final num num2;
  SubtractEvent({required this.num1, required this.num2});
}

class MultiplyEvent extends CalculatorEvent {
  final num num1;
  final num num2;
  MultiplyEvent({required this.num1, required this.num2});
}

class DivideEvent extends CalculatorEvent {
  final num num1;
  final num num2;
  DivideEvent({required this.num1, required this.num2});
}