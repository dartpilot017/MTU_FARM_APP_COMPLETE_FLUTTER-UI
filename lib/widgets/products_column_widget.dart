import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mtu_farm_app/widgets/big_text.dart';
import 'package:mtu_farm_app/widgets/small_text.dart';

class ProductsContainer extends StatelessWidget {
  final String image;
  final String text1;
  final String text2;
  double size;
  double height;
  ProductsContainer({Key? key,
     this.image = "",
    required this.text1,
    required this.text2,
    this.size =12,
    this.height=1.2
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 200,
          width: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("$image"),
              fit: BoxFit.cover
            ),
            // color: Colors.blue,
            borderRadius: BorderRadius.circular(15)
          ),
        ),
        Column(
          children: <Widget>[
            BigText(text: text1),
            SmallText(text: text2)
          ],
        )
      ],
    );
  }
}
