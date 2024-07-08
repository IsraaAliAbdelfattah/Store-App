import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class CategoriesService {
  Future<List<ProductModel>> getallcategories(
       {required String categoryName}) async {
    Api api = Api();
    List<dynamic> data = await api.get(
        url: 'https://fakestoreapi.com/products/category/$categoryName');

    List<ProductModel> products = [];
    for (int i = 0; i < data.length; i++) {
      products.add(
        ProductModel.fromjson(data[i]),
      );
    }

    return products;
  }
}
