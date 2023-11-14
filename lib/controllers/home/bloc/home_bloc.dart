import 'package:employee_details_app/controllers/home/bloc/home_event.dart';
import 'package:employee_details_app/controllers/home/bloc/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitalState()) {
    on<AddEmployeeButtonClickEvent>(
        (event, emit) => emit(AddEmployeeButtonState()));

    on<EmployeeDetailsNotFoundEvent>(
        (event, emit) => emit(EmployeeDetailsNotFoundState()));

    on<EmployeeDetailsFoundEvent>(
        (event, emit) => emit(EmployeeDetailsFoundState()));
  }
}
