import 'package:demoproject/cubit/app_cubit_logics.dart';
import 'package:demoproject/cubit/app_cubits.dart';
import 'package:demoproject/pages/detail_page.dart';
import 'package:demoproject/pages/navpages/main_page.dart';
import 'package:demoproject/pages/welcome_page.dart';
import 'package:demoproject/services/data_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            appBarTheme: const AppBarTheme(
                iconTheme: IconThemeData(
                    color:Colors.black
                ),
                elevation: 0,
                backgroundColor: Colors.white
            )
        ),
        // home: WelcomePage(),
        // home: MainPage(),
      // home: DetailPage(),
      home: BlocProvider<AppCubits>(
        create:(context) => AppCubits(
          data:DataServices(),
        ),
        child:AppCubitLogics(),
      ),
        // MultiBlocProvider(
        //   providers: [
        //     BlocProvider<AppCubits>(
        //       create: (context) => AppCubits(
        //         data: DataServices(),
        //       ),
        //     ),
        //     BlocProvider<StorePageInfoCubits>(
        //       create: (context) => StorePageInfoCubits(),
        //     )
        //   ],
        //   child: const AppCubitLogics(),
        // )
    );
  }
}
