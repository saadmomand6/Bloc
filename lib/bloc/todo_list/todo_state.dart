import 'package:equatable/equatable.dart';

class TodoState extends Equatable {
  final List todolist;
  const TodoState({this.todolist = const []});
  
  TodoState copyWith({List? updatetodolist}){
    return TodoState(
      todolist: updatetodolist ?? todolist
    );
  }

  @override
  List<Object?> get props => [todolist];
}