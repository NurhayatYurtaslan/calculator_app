part of 'calculator_bloc.dart';

abstract class CalculatorState {}

final class CalculatorInitial extends CalculatorState {}

final class CalculatorResult extends CalculatorState {
  final num result;
  CalculatorResult({required this.result});
}