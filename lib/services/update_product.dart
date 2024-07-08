import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class UpdateProduct
{
    Future<ProductModel> updateproduct({
  required String title,
    required String price,
    required String description,
    required String image,
    required String category,
    required dynamic id,
  }) async {
    Api api = Api();
    Map<String, dynamic> data =
        await api.put(url: 'https://fakestoreapi.com/products/$id', body: {
      'title': title,
      'price': price,
      'description': description,
      'image': image,
      'category': category,
    });

    return ProductModel.fromjson(data);
  }
}