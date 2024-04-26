import 'package:bloc/bloc.dart';
import 'package:bloc_practice/bloc/counter/counter_events.dart';
import 'package:bloc_practice/bloc/counter/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState>{
  // CounterBloc(super.initialState);
  CounterBloc() : super(CounterState()){
    on<Increment>(_increment);
    on<Decrement>(_decrement);
  }
  void _increment(Increment event, Emitter<CounterState> emit){
    emit(state.copyWith(counterValue: state.counter + 1));//act as setstate
  }
  void _decrement(Decrement event, Emitter<CounterState> emit){
    if (state.counter > 0) {
    emit(state.copyWith(counterValue: state.counter - 1));  
    }
    
  }
}