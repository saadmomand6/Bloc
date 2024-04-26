import 'package:bloc_practice/bloc/counter/counter_bloc.dart';
import 'package:bloc_practice/bloc/counter/counter_events.dart';
import 'package:bloc_practice/bloc/counter/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountersScreen extends StatelessWidget {
  const CountersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state){
              return Text(state.counter.toString(), style: TextStyle(fontSize: 30),);
          },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {
                context.read<CounterBloc>().add(Increment());
              }, child: const Text('ADD')),
              SizedBox(width: 20,),
              ElevatedButton(onPressed: () {
                context.read<CounterBloc>().add(Decrement());
              }, child: const Text('Remove'))
            ],
          )
        ],
      ),
    );
  }
}
