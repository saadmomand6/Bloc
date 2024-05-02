import 'package:bloc_practice/bloc/todo_list/todo_bloc.dart';
import 'package:bloc_practice/bloc/todo_list/todo_event.dart';
import 'package:bloc_practice/bloc/todo_list/todo_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ToDo Screen'),
      ),
      body: BlocBuilder<TodoBloc, TodoState>(builder: (context, state) {
        if (state.todolist.isEmpty) {
          return const Center(
            child: Text('No Item Found'),
          );
        } else if (state.todolist.isNotEmpty) {
          return ListView.builder(
              itemCount: state.todolist.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('saad khan ${index.toString()}'),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      context.read<TodoBloc>().add(Delete(task: state.todolist[index]));
                    },
                  ),
                );
              });
        } else {
          return const SizedBox();
        }
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // for (var i = 0; i < 10; i++) {
            context.read<TodoBloc>().add( const Add(task: 'task'));
          // }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}