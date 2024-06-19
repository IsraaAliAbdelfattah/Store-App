import 'dart:convert';
import 'package:store_app/helper/api.dart';
import 'package:http/http.dart';
class AllCategoriesService{
  Future<List<dynamic>> getallcategories()async
  {
  List<dynamic> data = await Api().get(url: 'https://fakestoreapi.com/products/categories');
   
  return data;

  }
}