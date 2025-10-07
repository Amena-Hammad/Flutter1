import 'package:flutter/material.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({super.key});

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
        centerTitle: true ,
      ),
      body: ListView(
      ///  scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(8),
        children: [
          Container(
            height: 50,
            color: Colors.pink[400],
            child: const Center(child: Text("Entry A"),),
          ),
          Container(
            height: 50,
            color: Colors.pink[300],
            child: const Center(child: Text("Entry B"),),
          ),
          Container(
            height: 50,
            color: Colors.pink[200],
            child: const Center(child: Text("Entry C"),),
          ),
        ],
      ),
    );
  }
}
