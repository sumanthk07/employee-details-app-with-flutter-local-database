import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'edit_controller_event.dart';
part 'edit_controller_state.dart';

class EditControllerBloc extends Bloc<EditControllerEvent, EditControllerState> {
  EditControllerBloc() : super(EditControllerInitial()) {
    on<EditControllerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
