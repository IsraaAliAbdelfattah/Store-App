import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class GetAllProduct {
  Future<List<ProductModel>> getallproduct() async {
      Api api = Api();
    List<dynamic> data =
        await api.get(url: 'https://fakestoreapi.com/products');

    List<ProductModel> products = [];
    for (int i = 0; i < data.length; i++) {
      products.add(
        ProductModel.fromjson(data[i]),
      );
    }

    return products;
  }
}
