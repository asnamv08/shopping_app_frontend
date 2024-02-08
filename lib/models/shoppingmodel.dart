// To parse this JSON data, do
//
//     final posts = postsFromJson(jsonString);

import 'dart:convert';

List<Posts> postsFromJson(String str) => List<Posts>.from(json.decode(str).map((x) => Posts.fromJson(x)));

String postsToJson(List<Posts> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Posts {
  String id;
  String itemname;
  String itemquantity;
  String itemprice;
  String itemexpiredate;
  int v;

  Posts({
    required this.id,
    required this.itemname,
    required this.itemquantity,
    required this.itemprice,
    required this.itemexpiredate,
    required this.v,
  });

  factory Posts.fromJson(Map<String, dynamic> json) => Posts(
    id: json["_id"],
    itemname: json["itemname"],
    itemquantity: json["itemquantity"],
    itemprice: json["itemprice"],
    itemexpiredate: json["itemexpiredate"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "itemname": itemname,
    "itemquantity": itemquantity,
    "itemprice": itemprice,
    "itemexpiredate": itemexpiredate,
    "__v": v,
  };
}
