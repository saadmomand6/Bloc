import 'package:equatable/equatable.dart';

abstract class SwitchEvent extends Equatable {
  const SwitchEvent();
  @override
  List<Object?> get props => [];
}
class Switchchange extends SwitchEvent {}
class Opacitychange extends SwitchEvent {
  final double newval;
  const Opacitychange(this.newval);

  @override
  List<Object?> get props => [newval];
  }