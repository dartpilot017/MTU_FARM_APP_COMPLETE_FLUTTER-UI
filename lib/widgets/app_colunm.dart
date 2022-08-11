import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mtu_farm_app/widgets/small_text.dart';

import 'big_text.dart';
import 'icon_text_widgets.dart';

class AppColunm extends StatelessWidget {
  final String text;
  const AppColunm({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text, size: 26,),
        SizedBox(height: 10,),
        Row(
          children: [
            Wrap(
              children: List.generate(5, (index) {
                return Icon(
                  Icons.star,
                  color: Colors.orangeAccent.shade100,
                  size: 15,);
              }),
            ),
            SizedBox(width: 15,),
            SmallText(text: "4.5", color: Colors.black38,),
            SizedBox(width: 10,),
            SmallText(text: "1287", color: Colors.black38,),
            SizedBox(width: 10,),
            SmallText(text: "comments", color: Colors.black38,)
          ],
        ),
        SizedBox(height: 20,),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconsAndTextWidget(
                  icon: Icons.circle_rounded,
                  text: "Normal",
                  color: Colors.black38,
                  iconColor: Colors.orangeAccent.shade100),
              // SizedBox(width: 20,),
              IconsAndTextWidget(
                  icon: Icons.location_on,
                  text: "1.4km",
                  color: Colors.black38,
                  iconColor: Colors.green.shade200),
              // SizedBox(width: 20,),
              IconsAndTextWidget(
                  icon: Icons.access_time_rounded,
                  text: "48min",
                  color: Colors.black38,
                  iconColor: Colors.redAccent.shade100)
            ]
        )
      ],
    );
  }
}
