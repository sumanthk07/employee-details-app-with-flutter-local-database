import 'package:employee_details_app/controllers/home/bloc/home_bloc.dart';
import 'package:employee_details_app/view/add_employee/add_employee.dart';
import 'package:employee_details_app/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Routes {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/home":
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => HomeBloc(),
            child: const HomePage(),
          ),
        );

      case "/addEmployeeDetails":
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => HomeBloc(),
            child: const AddEmployeeDetails(),
          ),
        );

      default:
    }
  }
}
