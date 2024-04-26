import 'package:equatable/equatable.dart';

class CounterState extends Equatable {
  final int counter;
  const CounterState({this.counter = 0});
  @override
  List<Object?> get props => [counter];

  CounterState copyWith ({int? counterValue}){
    return CounterState(
      counter: counterValue ?? counter
    );
  }
}