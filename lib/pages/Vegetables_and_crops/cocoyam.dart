import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../utils/dimensions.dart';
import '../../widgets/app_colunm.dart';
import '../../widgets/app_icon.dart';
import '../../widgets/big_text.dart';
import '../../widgets/expandable_text.dart';

class CocoYamPage extends StatelessWidget {
  const CocoYamPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background image
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 350,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          "assets/images/cocoyam.jpeg"
                      ),
                    )
                ),
              )
          ),
          //icon widgets
          Positioned(
              left: 20,
              top: 45,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: AppIcon(icon: Icons.arrow_back_ios,backgroundColor: Colors.transparent, iconColor: Colors.white,),
                    onTap: (){
                      Navigator.pop(context);
                    },),
                  AppIcon(icon: Icons.shopping_cart_rounded,backgroundColor: Colors.transparent, iconColor: Colors.white,)
                ],
              )
          ),
          //Fruit's name and nutrition facts
          Positioned(
              left: 0,
              right: 0,
              top: 330,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)
                    ),
                    color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColunm(text: 'Cocoyam'),
                    SizedBox(height: 20,),
                    BigText(text: "Nutrition facts"),
                    SizedBox(height: 20,),
                    Expanded(
                      child: SingleChildScrollView(
                        child: ExpandableText(
                          text: "Apples are high in fiber, vitamin C, and various antioxidants. They are also very filling, considering their low calorie count. Here are the nutrition  facts for one raw, unpeeled, medium-sized apple (100 g) Calories: 52, Water: 86%, Protein: 0.3g, Carbs: 13.8g, Sugar: 10.4g, Fiber: 2.4g, Fat: 0.2g. Apples also contain Vitamin C and a main mineral source which is Potassium.",),
                      ),
                    )
                  ],
                ),
              )),


        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.height120,
        padding: EdgeInsets.only(top: 30, bottom: 30, left: 20, right: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20*2), topRight: Radius.circular(20*2)),
            color: Colors.grey.shade100
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: 20, bottom: 20, left: 20, right: 20
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
              ),
              child: Row(
                children: [
                  Icon(Icons.remove, color: Colors.black26,),
                  SizedBox(width: 5,),
                  BigText(text: "0"),
                  SizedBox(width: 5,),
                  Icon(Icons.add, color: Colors.black26,)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: 20, bottom: 20, left: 20, right: 20
              ),
              child: BigText(text: "₦600 | Add to cart", color: Colors.white,),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.green.shade400
              ),
            )
          ],
        ),
      ),
    );
  }
}
