import 'package:flutter/material.dart';
import 'package:mtu_farm_app/pages/loginpage.dart';
import 'package:mtu_farm_app/pages/siguppage.dart';
import 'package:mtu_farm_app/widgets/center_image_logo.dart';
import 'package:mtu_farm_app/widgets/big_text.dart';
import 'package:mtu_farm_app/widgets/small_text.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.maxFinite,
        child: Stack(
            children: [
              Positioned(
                child: Container(
                  width: double.maxFinite,
                  height: 530,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CenteredImage(
                        image1: 'images/mtu.jpg',
                        text1: "MTU FARM",
                        image2: 'images/fruitshelf.jpg',
                        width2: 350,
                        height2: 250,),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 20,
                right: 20,
                top: 475,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BigText(text: "WELCOME TO MTU FARM", color: Colors.green.shade700, size: 25,),
                    BigText(text: "Explore this experience with a step", color: Colors.green.shade700,),
                  ],
                ),
              )
            ]
        ),
      ),
      bottomNavigationBar: Container(
        height: 220,
        padding: EdgeInsets.only(top: 30, bottom: 30, left: 20, right: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20*2), topRight: Radius.circular(20*2)),
            color: Colors.white
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Container(
                padding: EdgeInsets.only(
                    top: 20, bottom: 20, left: 20, right: 20
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green.shade400
                ),
                child: Center(
                    child: BigText(text: "LOGIN", color: Colors.white,)
                ),
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupPage()));
              },
              child: Container(
                  padding: EdgeInsets.only(
                      top: 20, bottom: 20, left: 20, right: 20
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green.shade400
                  ),
                    child: Center(
                        child: BigText(text: "SIGNUP", color: Colors.white,)
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


