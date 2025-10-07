import 'package:flutter/material.dart';
import 'package:untitled/screenn/first_screen.dart';
import 'package:untitled/screenn/home_screen.dart';
import 'package:untitled/screenn/images.dart';
import 'package:untitled/screenn/list_view_screen.dart';
import 'package:untitled/screenn/login_screen.dart';
import 'package:untitled/screenn/sign_up.dart';

import 'screenn/list_view_builder_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Images(),
    );
  }
}


