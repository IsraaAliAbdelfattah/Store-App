import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'Home Page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text('New Trend'),
        actions: [
          IconButton(
            onPressed: () {},
            icon:const FaIcon(FontAwesomeIcons.cartShopping),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 180,
              width: 180,
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
                    Text('Handbag lv',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       Text(r'$225',
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
            bottom: 110,
            child: Image.network(
              'https://i.ytimg.com/vi/vt-fGSQnM8E/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLDYSXq73A4cNkueHHOnbPuN2EbDyw',
              height: 90,),
          ),
          ],
        ),
      ),
    );
  }
}
