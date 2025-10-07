import 'package:flutter/material.dart';

class GridViewBuilderScreen extends StatefulWidget {
  const GridViewBuilderScreen({super.key});

  @override
  State<GridViewBuilderScreen> createState() => _GridViewBuilderScreenState();
}

class _GridViewBuilderScreenState extends State<GridViewBuilderScreen> {
  List<String> names = ["Amena","Ahmad","Hammad"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View Builder"),
        centerTitle: true,
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent
            (
              maxCrossAxisExtent: 300,
          ),
         /// gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            ///  crossAxisCount: 3),
        itemCount: names.length,
        itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                color: Colors.white38,
                child: Center(child: Text(names[index]),),
              ),
            );
        },
      ),
    );
  }
}
