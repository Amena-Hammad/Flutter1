import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget{
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title: Text("first screen",style:
        TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.yellow,
        ),
      ),
        centerTitle: true,
        leading: Icon(Icons.favorite_border),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.person)),
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border)),
          IconButton(onPressed: (){}, icon: Icon(Icons.message)),
         // Icon(Icons.person),
         // Icon(Icons.person),
        ],
        backgroundColor: Colors.blue,

      ),
          body:Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [ Text(
              "data",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.pinkAccent
              ),
            ),
            ],
          )) ,
    );
  }
}