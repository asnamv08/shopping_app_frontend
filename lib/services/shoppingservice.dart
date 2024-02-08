import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:shopping/models/shoppingmodel.dart';

class ShoppingApiService{
  Future<dynamic>senddata(
      String name,String quantity,String price,String date,
      ) async{
    var client=http.Client();
    var apiurl=Uri.parse("http://192.168.251.163:3001/api/shoppingapp/add/");
    var response=await client.post(apiurl,
        headers: <String,String>{
          "Content-Type":"application/json; charset=UTF-8"
        },
        body:jsonEncode(<String,String>{
          "itemname": name,
          "itemquantity": quantity,
          "itemprice": price,
          "itemexpiredate":date

        }));
    if(response.statusCode==200)
    {
      return jsonDecode(response.body);
    }
    else
    {
      throw Exception("Failed To Send Data");
    }

  }
  Future<List<Posts>>getPosts()async{
    var client=http.Client();
    var apiurl=Uri.parse("");
    var response=await client.get(apiurl);
    if(response.statusCode==200)
    {
      return postsFromJson(response.body);
    }
    else
    {
      return [];
    }

  }
}
