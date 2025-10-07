import 'package:flutter/material.dart';

class Images extends StatefulWidget {
  const Images({super.key});

  @override
  State<Images> createState() => _ImagesState();
}

class _ImagesState extends State<Images> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Image.asset("assets/images/panda.jpg")
      ///Image.network(
      ///  "https://docs.flutter.dev/assets/images/dash/dash-fainting.gif"
     /// ),
      
    );
  }
}
