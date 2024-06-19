import 'dart:convert';
import 'package:http/http.dart';
import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class GetAllProduct {
  Future<List<ProductModel>> getallproduct() async {
     List<dynamic> data = await Api().get(url: 'https://fakestoreapi.com/products');
   
  List<ProductModel> productlist = [];
  for (int i = 0; i < data.length; i++) {
    productlist.add(
      ProductModel.fromjson(data[i]),
    );
  }
  return productlist;

  }
}
