import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({super.key});

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  List<String> names = ["Amena","Ahmad","Hammad"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Builder"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount:names.length ,
          itemBuilder: (context,index){
          return
              Container(
                height: 45,
                color: Colors.blue,
                child: Center(child: Text(names[index]),),
              );
          }
      ),
    //  body: ListView.separated(
      //    itemCount:names.length ,
      //    separatorBuilder: (Context,index){
       //     return SizedBox(height: 10,);
      //or return Divdier();
     //     },
     //    {
       //     return
       //       Container(
        //        height: 45,
       //         color: Colors.blue,
       //         child: Center(child: Text(names[index]),),
        //      );
          //}
     // ),
   // );
    );
  }

}
