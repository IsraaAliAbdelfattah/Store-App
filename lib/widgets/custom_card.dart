import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/screens/update_product_screen.dart';

class CustomCard extends StatelessWidget {
  ProductModel product;
   CustomCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector   (
      onTap: (){
        Navigator.pushNamed(context, UpdateProductScreen.id);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(
               blurRadius: 40,
               color: Colors.grey.withOpacity(.2),
               spreadRadius: 0,
               offset: Offset(10,10),
              ),]
            ),
            child: Card(
              elevation: 10,
              child: Padding(
               padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text(product.title.substring(0,6),
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     Text(r'$'+product.price.toString(),
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                     ),
                     FaIcon(FontAwesomeIcons.heart)
                    ],
                  )
                ],),
              ),
            ),
          ),
        Positioned(
          left: 20,
          bottom: 85,
          child: Image.network(
            product.image,
            height: 80,
            width: 80,
            ),
        ),
        ],
      ),
    );
  }
}
