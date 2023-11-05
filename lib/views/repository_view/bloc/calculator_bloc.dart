import 'package:calculator_app/views/repository_view/calculator_repository_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'calculator_event.dart';
part 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  final CalculatorRepo calculatorRepo = CalculatorRepo();
  CalculatorBloc() : super(CalculatorInitial()) {
    on<CalculatorEvent>((event, emit) {
      if (event is AddEvent) {
        num result = calculatorRepo.add(num1: event.num1, num2: event.num2);
        emit(CalculatorResult(result: result));
      } else if (event is SubtractEvent) {
        num result =
            calculatorRepo.subtract(num1: event.num1, num2: event.num2);
        emit(CalculatorResult(result: result));
      } else if (event is MultiplyEvent) {
        num result =
            calculatorRepo.multiply(num1: event.num1, num2: event.num2);
        emit(CalculatorResult(result: result));
      } else if (event is DivideEvent) {
        num result = calculatorRepo.divide(num1: event.num1, num2: event.num2);
        emit(CalculatorResult(result: result));
      }
    });
  }
}