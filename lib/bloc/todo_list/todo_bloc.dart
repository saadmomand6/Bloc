import 'package:bloc/bloc.dart';
import 'package:bloc_practice/bloc/todo_list/todo_event.dart';
import 'package:bloc_practice/bloc/todo_list/todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final List<String> newlist = [];
  TodoBloc() : super(const TodoState()) {
    on<Add>(addtodo);
    on<Delete>(deletetodo);
  }
  void addtodo(Add event, Emitter<TodoState> emit) {
    newlist.add(event.task);
    emit(state.copyWith(updatetodolist: List.from(newlist)));
  }

  void deletetodo(Delete event, Emitter<TodoState> emit) {
    newlist.remove(event.task);
    emit(state.copyWith(updatetodolist: List.from(newlist)));
  }
}
