import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memo/cubit/app_cubits.dart';
import 'package:memo/cubit/app_cubits_logics.dart';
import 'package:geolocator/geolocator.dart';
import 'package:memo/pages/navpages/homePage.dart';
import 'package:memo/pages/navpages/mainPage.dart';
import 'pages/welcome.dart';



void main()=>runApp( new MyApp());
class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: BlocProvider<AppCubits>(
        create:(context)=>AppCubits(
        ),
        child: AppCubitLogics(),
      )

    );
  }

}
