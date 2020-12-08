import 'package:cloud_firestore/cloud_firestore.dart';

class Product {
  String id;
  String name;
  int rating;
  String category;
  DocumentReference image;
  String brand;
  List ingredients;
  List comments;
  Timestamp createdAt;
  Product.fromMap(Map<String, dynamic> data){
    id= data['id'];
    name = data['name'];
    category = data['category'];
    image = data['image'];
    brand = data['brand'];
    ingredients = data['ingredients'];
    comments= data['comments'];
    createdAt = data['createdAt'];
  }

}
