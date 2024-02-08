import 'package:flutter/material.dart';
import 'package:shopping/pages/add.dart';
import 'package:shopping/pages/search.dart';
import 'package:shopping/pages/view.dart';

class menu extends StatelessWidget {
  const menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Menu"),backgroundColor: Colors.blue.shade300,),
      body: Container(width: double.infinity,decoration: BoxDecoration(gradient: LinearGradient(
          colors: [
            Colors.blue,
            Colors.green
          ]
      )),padding: EdgeInsets.all(20),child: Column(children: [
        SizedBox(
          width: 250,
          height: 60,
          child: ElevatedButton(onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>add()));
          }, child: Text("Add items")),
        ),
        SizedBox(height: 10,),
        SizedBox(
          width: 250,
          height: 60,
          child: ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>itemview()));
          }, child: Text("View Items")),
        ),
        SizedBox(height: 10,),
        SizedBox(
          width: 250,
          height: 60,
          child: ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>itemsearch()));
          }, child: Text("Search Item")),
        ),

      ],),),


    );
  }
}

