import 'dart:collection';
import 'package:flutter/cupertino.dart';
import 'package:myhairregimen/models/product.dart';
class ProductNotifier with ChangeNotifier{
  List<Product> _productList = [];
  Product _currentProduct;
  UnmodifiableListView<Product> get productList => UnmodifiableListView(_productList);
  Product get currentProduct => _currentProduct;
  set productList(List<Product> productList) {
    _productList = productList;
    notifyListeners();
  }
  set currentProduct(Product currentProduct) {
    _currentProduct = currentProduct;
    notifyListeners();
  }
}
