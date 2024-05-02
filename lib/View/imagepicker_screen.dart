import 'dart:io';

import 'package:bloc_practice/bloc/imagepicker/imagepicker_bloc.dart';
import 'package:bloc_practice/bloc/imagepicker/imagepicker_event.dart';
import 'package:bloc_practice/bloc/imagepicker/imagepicker_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImagePickerScreen extends StatelessWidget {
  const ImagePickerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Image Picker Screen'),),
      body: Column(
        children: [
          BlocBuilder<ImagePickerBloc, ImagePickerState>
          (builder: (context, state){
            return state.file == null ? InkWell(
              onTap: (){
                // context.read<ImagePickerBloc>().add(GalleryPicker());
                context.read<ImagePickerBloc>().add(CameraPicker());
              },
              child: const CircleAvatar(child: Icon(Icons.camera),)) : Image.file(File(state.file!.path.toString())); 
          })
        ],
      ), 
    );
  }
}