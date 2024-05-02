import 'package:equatable/equatable.dart';

abstract class TodoEvent extends Equatable {
  const TodoEvent();
  
}

class Add extends TodoEvent {
  final String task;
  const Add({required this.task});
  @override
  List<Object?> get props => [task];
}
class Delete extends TodoEvent {
final Object task;
  const Delete({required this.task});
  @override
  List<Object?> get props => [task];
}