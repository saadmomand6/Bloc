import 'package:equatable/equatable.dart';

abstract class TodoEvent extends Equatable {
  const TodoEvent();
  
}

class AddTOdoEvent extends TodoEvent {
  final String task;
  const AddTOdoEvent({required this.task});
  @override
  List<Object?> get props => [task];
}
class DeleteTOdoEvent extends TodoEvent {
final Object task;
  const DeleteTOdoEvent({required this.task});
  @override
  List<Object?> get props => [task];
}