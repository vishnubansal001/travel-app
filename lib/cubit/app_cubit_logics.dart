import 'package:demoproject/cubit/app_cubit_states.dart';
import 'package:demoproject/cubit/app_cubits.dart';
import 'package:demoproject/pages/detail_page.dart';
import 'package:demoproject/pages/home_page.dart';
import 'package:demoproject/pages/navpages/main_page.dart';
import 'package:demoproject/pages/welcome_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({super.key});

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(
        builder: (context, state) {
          if (state is DetailState) {
            return DetailPage();
          }else if (state is WelcomeState) {
            return WelcomePage();
          } else if (state is LoadingState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }else if (state is LoadedState) {
            return MainPage();
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
