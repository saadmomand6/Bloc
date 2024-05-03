import 'package:equatable/equatable.dart';

class TodoState extends Equatable {
  final List<String> todolist;
  const TodoState({this.todolist = const []});
  
  TodoState copyWith({List<String>? updatetodolist}){
    return TodoState(
      todolist: updatetodolist ?? todolist
    );
  }

  @override
  List<Object?> get props => [todolist];
}