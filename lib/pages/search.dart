import 'package:flutter/material.dart';

class itemsearch extends StatefulWidget {
  const itemsearch({super.key});

  @override
  State<itemsearch> createState() => _itemsearchState();
}

class _itemsearchState extends State<itemsearch> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text("Item Search"),backgroundColor: Colors.blue.shade300,),
          body: Container(width: double.infinity,decoration: BoxDecoration(gradient: LinearGradient(colors: [
            Colors.blue,
            Colors.green
          ])),padding: EdgeInsets.all(20),child: Column(children: [
            TextField(decoration: InputDecoration(labelText: ("Enter Item name"),border: OutlineInputBorder()),),
            SizedBox(height: 10,),
            SizedBox(
              width: 250,
              height: 60,
              child: ElevatedButton(style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.blue
              ),onPressed: (){}, child: Text("Search")),
            ),
            SizedBox(height: 10,),
            SizedBox(
              width: 250,
              height: 60,
              child: ElevatedButton(style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.blue
              ),onPressed: (){
                Navigator.pop(context);
              }, child: Text("Back")),
            )
          ]),)

      ),
    );
  }
}
