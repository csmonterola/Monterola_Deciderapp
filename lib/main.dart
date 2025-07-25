import 'package:flutter/material.dart';
import 'package:monterola_decider/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) { //starting point
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Decider',
        home: HomeView() ,
        theme: ThemeData()
    );
  }
}