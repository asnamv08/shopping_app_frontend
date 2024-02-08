import 'package:flutter/material.dart';
import 'package:shopping/services/shoppingservice.dart';

class add extends StatefulWidget {
  const add({super.key});

  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {
  TextEditingController getItemname=new TextEditingController();
  TextEditingController getItemquantity=new TextEditingController();
  TextEditingController getItemprice=new TextEditingController();
  TextEditingController getItemexpiredate=new TextEditingController();
  void Sendvaluetoapi()async{
    final response=await ShoppingApiService().senddata(
      getItemname.text,
      getItemquantity.text,
      getItemprice.text,
      getItemexpiredate.text,
    );
    if(response["status"]=="success")
    {
      print("successfully");
    }
    else
    {
      print("error");
    }


  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar:AppBar(title: Text("Item Details"),backgroundColor: Colors.pink.shade300,),
          body:SingleChildScrollView(
            child: Container(padding: EdgeInsets.all(20),child: Column(children: [
              TextField(controller: getItemname,decoration: InputDecoration(labelText: ("Item Name"),hintText: ("enter  item name"),border: OutlineInputBorder()),),
              SizedBox(height: 10,),
              TextField(controller: getItemquantity,decoration: InputDecoration(labelText: ("Item Quantity"),hintText: ("enter item quantity"),border: OutlineInputBorder()),),
              SizedBox(height: 10,),
              TextField(controller: getItemprice,decoration: InputDecoration(labelText: ("Item Price"),hintText: ("enter item price"),border: OutlineInputBorder()),),
              SizedBox(height: 10,),
              TextField(controller: getItemexpiredate,decoration: InputDecoration(labelText: ("Item Expiredate"),hintText: ("enter item expiredate"),border: OutlineInputBorder()),),
              SizedBox(height: 10,),
              SizedBox(
                width: 250,
                height: 60,
                child: ElevatedButton(style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)
                ),onPressed: Sendvaluetoapi,
                    child: Text("Submit")),
              ),
              SizedBox(height: 10,),
              SizedBox(
                width: 250,
                height: 60,
                child: ElevatedButton(style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)
                ),onPressed: ()
                {
                  Navigator.pop(context);
                }, child: Text("Back")),
              )
            ],),),
          )

      ),
    );
  }
}

