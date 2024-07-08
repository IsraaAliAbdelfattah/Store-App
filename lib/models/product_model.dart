class ProductModel {
  final dynamic id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  final RatingModel rating;
  ProductModel({
    // required this.category,
    required this.description,
    required this.id,
    required this.image,
    required this.price,
    required this.title,
    required this.rating,
    required this.category,
  });
  factory ProductModel.fromjson(jsondata) {
    return ProductModel(
      category: jsondata['category'],
      description: jsondata['description'],
      id: jsondata['id'],
      image: jsondata['image'],
      price: jsondata['price'],
      title: jsondata['title'],
      rating: RatingModel.fromjson(jsondata['rating']),
    );
  }
}

class RatingModel {
  final double rate;
  final int count;
  RatingModel({required this.count, required this.rate});
  factory RatingModel.fromjson(jsondata) {
    return RatingModel(count: jsondata['count'], rate: jsondata['rate']);
  }
}
