import 'package:flutter/material.dart';
import 'package:shopping/models/shoppingmodel.dart';
import 'package:shopping/services/shoppingservice.dart';

class itemview extends StatefulWidget {
  const itemview({super.key});

  @override
  State<itemview> createState() => _itemviewState();
}

class _itemviewState extends State<itemview> {
  Future<List<Posts>>?data;
  void initState() {
    // TODO: implement initState
    super.initState();
    data=ShoppingApiService().getPosts();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
        ),
        body: FutureBuilder(
            future: data,
            builder: (context,snapshot){
              if(snapshot.hasData && snapshot.data!.isNotEmpty){
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder:(value,index){
                      return Card(
                        child: Column(
                          children: [
                            ListTile(
                                title:  Text("Item Name: "+snapshot.data![index].itemname.toString()),
                                subtitle: Text("Item Quantity:"+snapshot.data![index].itemquantity.toString()+"\n"+"Item Price:"+snapshot.data![index].itemprice.toString()+"\n"+"Expire date:"+snapshot.data![index].itemexpiredate.toString()),
                                leading:CircleAvatar(child: Text(snapshot.data![index].itemname.toString()[0]),)
                            )
                          ],
                        ),
                      );

                    }
                );
              }
              else{
                return Text("Fetching data");
              }

            }

        ),


      ),
    );
  }
}
