import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class AddProduct {
  Future<ProductModel> addproduct(
      {required String title,
    required String price,
    required String description,
    required String image,
    required String category,
  }) async {
    Api api = Api();
    Map<String, dynamic> data =
        await api.post(url: 'https://fakestoreapi.com/products', body: {
      'title': title,
      'price': price,
      'description': description,
      'image': image,
      'category': category,
    });

    return ProductModel.fromjson(data);
  }
}
