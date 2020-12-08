//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:myhairregimen/models/product.dart';
//import 'package:myhairregimen/models/product_notifier.dart';
//class ProductService{
////get products
//  Future getProducts(ProductNotifier productNotifier) async{
//    QuerySnapshot snapshot = await Firestore.instance.collection('Products').getDocuments();
//    List<Product> _productList = [];
//    snapshot.documents.forEach((document){
//      Product product = Product.fromMap(document.data);
//      _productList.add(product);
//    });
//    productNotifier.productList = _productList;
//  }
//}

