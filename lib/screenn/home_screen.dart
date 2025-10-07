import 'package:flutter/material.dart';

import 'first_screen.dart';

class HomeScreen  extends StatefulWidget {
  const HomeScreen ({super.key});

  @override
  State<HomeScreen> createState() => _State();
}

class _State extends State<HomeScreen> {
  int _selectedIndex = 0;
  List<Widget> _pages = [
    FirstScreen(),
    Text("Data")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _pages[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap:(index){
            setState(() {
              _selectedIndex = index;
            });
            print("index : $_selectedIndex");
          },
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile")
      ]),
    );
  }
}
