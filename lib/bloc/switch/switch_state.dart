import 'package:equatable/equatable.dart';

class SwitchState extends Equatable {
  final bool switchvalue;
  final double opacity;
  const SwitchState({this.switchvalue = false, this.opacity = 0.8});
  @override
  List<Object?> get props => [switchvalue, opacity];

  SwitchState copyWith ({bool? switchval, double? opacitynew}){
    return SwitchState(
      switchvalue: switchval ?? switchvalue,
      opacity:  opacitynew ?? opacity,
    );
  }
}