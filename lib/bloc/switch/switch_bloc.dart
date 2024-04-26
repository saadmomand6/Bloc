import 'package:bloc/bloc.dart';
import 'package:bloc_practice/bloc/switch/switch_event.dart';
import 'package:bloc_practice/bloc/switch/switch_state.dart';

class SwitchBloc extends Bloc<SwitchEvent, SwitchState>{
  // CounterBloc(super.initialState);
  SwitchBloc() : super(SwitchState()){
    on<Switchchange>(changeSwitch);
    on<Opacitychange>(changeOpacity);
  }
  void changeSwitch(Switchchange event, Emitter<SwitchState> emit){
    emit(state.copyWith(switchval: !state.switchvalue));//act as setstate
  }
  void changeOpacity(Opacitychange event, Emitter<SwitchState> emit){
    emit(state.copyWith(opacitynew: event.newval));//act as setstate
  }
}