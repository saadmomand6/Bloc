import 'package:bloc/bloc.dart';
import 'package:bloc_practice/bloc/imagepicker/imagepicker_event.dart';
import 'package:bloc_practice/bloc/imagepicker/imagepicker_state.dart';
import 'package:bloc_practice/utils/image_picker_util.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerBloc extends Bloc<ImagePickerEvent,ImagePickerState>{
  // CounterBloc(super.initialState);
  final ImagePickerUtils imagepickerutils;

  ImagePickerBloc(this.imagepickerutils) : super(const ImagePickerState()){
    on<CameraPicker>(CameraCapture);
    on<GalleryPicker>(GalleryCapture);
  }
  
  void CameraCapture(CameraPicker event, Emitter<ImagePickerState> emit)async{
    XFile? file = await imagepickerutils.cameraCapture();
     emit(state.copyWith(file));
  }
  void GalleryCapture(GalleryPicker event, Emitter<ImagePickerState> emit)async{
    XFile? file = await imagepickerutils.galleryCapture();
     emit(state.copyWith(file));
  }
}