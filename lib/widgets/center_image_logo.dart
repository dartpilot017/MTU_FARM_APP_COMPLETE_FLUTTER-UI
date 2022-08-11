import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mtu_farm_app/widgets/small_text.dart';

class CenteredImage extends StatelessWidget {
  final String image1;
  final String text1;
  final String image2;
  final String text2;
  double height1;
  double width1;
  double height2;
  double width2;

  CenteredImage({Key? key,
    required this.image1,
    required this.image2,
    this.height1=80,
    this.width1=110,
    this.text1 = "",
    this.text2 = " ",
    this.height2=250,
    this.width2=250,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Container(
                width: width1,
                height: height1,
                decoration: BoxDecoration(
                    // color: Colors.redAccent,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(image1)
                    )
                ),
              ),
            SmallText(text: text1, size: 18,),
            SizedBox(height: 50,),
            Container(
              width: width2,
              height: height2,
              decoration: BoxDecoration(
                // color: Colors.redAccent,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(image2)
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
