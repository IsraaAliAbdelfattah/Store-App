import 'dart:convert';
import 'package:store_app/helper/api.dart';
import 'package:http/http.dart';
class AllCategoriesService{
  Future<List<dynamic>> getallcategories()async
  {
   Api api = Api();
    List<dynamic> data =
        await api.get(url: 'https://fakestoreapi.com/products/categories');

    return data;;

  }
}