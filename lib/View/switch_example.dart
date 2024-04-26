import 'package:bloc_practice/bloc/switch/switch_bloc.dart';
import 'package:bloc_practice/bloc/switch/switch_event.dart';
import 'package:bloc_practice/bloc/switch/switch_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SwitchExample extends StatelessWidget {
  const SwitchExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('switch Example'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Noifications'),
              BlocBuilder<SwitchBloc, SwitchState>(
                buildWhen: (previous, current) => previous.switchvalue != current.switchvalue,
                builder: (context, state) {
                  print("swithc");
                  return Switch(
                      value: state.switchvalue,
                      onChanged: (newvalue) {
                        context.read<SwitchBloc>().add(Switchchange());
                      });
                },
              )
            ],
          ),
          BlocBuilder<SwitchBloc, SwitchState>(
            buildWhen: (previous, current) => previous.opacity != current.opacity,
            builder: (context, state) {
              print("slider");
              return Container(
                height: 200,
                width: double.maxFinite,
                color: Colors.red.withOpacity(state.opacity),
              );
            },
          ),
          BlocBuilder<SwitchBloc, SwitchState>(
            buildWhen: (previous, current) => previous.opacity != current.opacity,
            builder: (context, state) {
              return Slider(
                  value: state.opacity,
                  onChanged: (newvalue) {
                    context.read<SwitchBloc>().add(Opacitychange(newvalue));
                  });
            },
          )
        ],
      ),
    );
  }
}
