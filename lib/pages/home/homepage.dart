import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mtu_farm_app/pages/Vegetables_and_crops/beans.dart';
import 'package:mtu_farm_app/pages/Vegetables_and_crops/cassava.dart';
import 'package:mtu_farm_app/pages/Vegetables_and_crops/cocoyam.dart';
import 'package:mtu_farm_app/pages/Vegetables_and_crops/efo.dart';
import 'package:mtu_farm_app/pages/Vegetables_and_crops/okro.dart';
import 'package:mtu_farm_app/pages/Vegetables_and_crops/onion.dart';
import 'package:mtu_farm_app/pages/Vegetables_and_crops/pepper.dart';
import 'package:mtu_farm_app/pages/Vegetables_and_crops/poatatoes.dart';
import 'package:mtu_farm_app/pages/Vegetables_and_crops/rice.dart';
import 'package:mtu_farm_app/pages/Vegetables_and_crops/tomatoes.dart';
import 'package:mtu_farm_app/pages/Vegetables_and_crops/ugu.dart';
import 'package:mtu_farm_app/pages/Vegetables_and_crops/yam.dart';
import 'package:mtu_farm_app/pages/fruits/mangoespage.dart';
import 'package:mtu_farm_app/pages/fruits/melonpage.dart';
import 'package:mtu_farm_app/pages/fruits/oranges.dart';
import 'package:mtu_farm_app/pages/fruits/strawberrypage.dart';
import 'package:mtu_farm_app/utils/dimensions.dart';
import 'package:mtu_farm_app/widgets/big_text.dart';
import '../fruits/apple.dart';
import '../fruits/banana.dart';
import '../fruits/grapepage.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.maxFinite,
          color: Colors.green.shade700,
          // margin: EdgeInsets.only(top: 45),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: Dimensions.height45,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                        height: Dimensions.height50,
                        width: Dimensions.height50,
                        // color: Colors.blue,
                        margin: EdgeInsets.only(top: Dimensions.height10, left: Dimensions.width20, right: Dimensions.width20, bottom: Dimensions.height10),
                        child: Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(Dimensions.radius20),
                                // color: Colors.white
                            ),
                            child: Icon(
                              Icons.menu,
                              color: Colors.white,
                              size: 30,
                            ),
                            // color: Colors.green,
                          ),
                        ),
                      ),
                  ),
                  SizedBox(width: 140,),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      height: Dimensions.height50,
                      width: Dimensions.width50,
                      padding: EdgeInsets.only(left: 50),
                      // color: Colors.blue,
                      margin: EdgeInsets.only(top: Dimensions.height10,bottom: Dimensions.height10, left: Dimensions.width20, right: Dimensions.width20),
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(Dimensions.radius20),
                              // color: Colors.white
                          ),
                          child: Icon(
                            Icons.shopping_cart_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                          // color: Colors.green,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 729,
                // color: Colors.white,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25),
                  )
                ),
                child: ListView(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18),
                          child: Text(
                            "Fresh Fruits",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18),
                          child: Text(
                            "Fresh fruits pikedup from MTU farm",
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5.0),
                          height: 300,
                          // alignment: Alignment.center,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Column(
                                  children: [
                                    GestureDetector(
                                      child: Container(
                                        height: Dimensions.height200,
                                        width: Dimensions.width150,
                                        // color: Colors.orange,
                                        margin: EdgeInsets.symmetric(
                                          vertical: 10.0,
                                          horizontal: 10.0,
                                        ),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage("images/apple.jpeg"),
                                                fit: BoxFit.fitHeight),
                                            borderRadius: BorderRadius.circular(18.0)
                                        ),
                                      ),
                                      onTap: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => ApplePage())
                                        );
                                      },
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Apples",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        Text(
                                            "₦300 per/kg"
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    GestureDetector(
                                      child: Container(
                                        height: Dimensions.height200,
                                        width: Dimensions.width150,
                                        // color: Colors.orange,
                                        margin: EdgeInsets.symmetric(
                                          vertical: 10.0,
                                          horizontal: 10.0,
                                        ),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage("images/banana.jpg"),
                                                fit: BoxFit.fitHeight),
                                            borderRadius: BorderRadius.circular(18.0)
                                        ),
                                      ),
                                      onTap: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => BananaPage()),
                                        );
                                      },
                                    ),
                                    Text(
                                      "Banana",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Text(
                                        "₦300 per/kg"
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    GestureDetector(
                                      child: Container(
                                        height: Dimensions.height200,
                                        width: Dimensions.width150,
                                        // color: Colors.orange,
                                        margin: EdgeInsets.symmetric(
                                          vertical: 10.0,
                                          horizontal: 10.0,
                                        ),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage("images/grapes.jpeg"),
                                                fit: BoxFit.fill),
                                            borderRadius: BorderRadius.circular(18.0)
                                        ),
                                      ),
                                      onTap: (){
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => GrapePage()),
                                        );
                                      },
                                    ),
                                    Text(
                                      "Grapes",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Text("₦300 per/kg"),
                                  ],
                                ),
                                Column(
                                  children: [
                                    GestureDetector(
                                      child: Container(
                                        height: Dimensions.height200,
                                        width: Dimensions.width150,
                                        // color: Colors.orange,
                                        margin: EdgeInsets.symmetric(
                                          vertical: 10.0,
                                          horizontal: 10.0,
                                        ),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage("images/Mangoes.png"),
                                                fit: BoxFit.fitHeight),
                                            borderRadius: BorderRadius.circular(18.0)
                                        ),
                                      ),
                                      onTap: (){
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => MangoPage()),
                                        );
                                      },
                                    ),
                                    Text(
                                      "Mango",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Text("₦300 per/kg"),
                                  ],
                                ),
                                Column(
                                  children: [
                                    GestureDetector(
                                      child: Container(
                                        height: Dimensions.height200,
                                        width: Dimensions.width150,
                                        // color: Colors.orange,
                                        margin: EdgeInsets.symmetric(
                                          vertical: 10.0,
                                          horizontal: 10.0,
                                        ),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage("images/oranges.webp"),
                                                fit: BoxFit.fitHeight),
                                            borderRadius: BorderRadius.circular(18.0)
                                        ),
                                      ),
                                      onTap: (){
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => OrangePage()),
                                        );
                                      },
                                    ),
                                    Text(
                                      "Oranges",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Text("₦300 per/kg"),
                                  ],
                                ),
                                Column(
                                  children: [
                                    GestureDetector(
                                      child: Container(
                                        height: Dimensions.height200,
                                        width: Dimensions.width150,
                                        // color: Colors.orange,
                                        margin: EdgeInsets.symmetric(
                                          vertical: 10.0,
                                          horizontal: 10.0,
                                        ),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage("images/strawberry.jpeg"),
                                                fit: BoxFit.fitHeight),
                                            borderRadius: BorderRadius.circular(18.0)
                                        ),
                                      ),
                                      onTap: (){
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => StrawberryPage()),
                                        );
                                      },
                                    ),
                                    Text(
                                      "Strawberry",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Text("₦300 per/kg"),
                                  ],
                                ),
                                Column(
                                  children: [
                                    GestureDetector(
                                      child: Container(
                                        height: Dimensions.height200,
                                        width: Dimensions.width150,
                                        // color: Colors.orange,
                                        margin: EdgeInsets.symmetric(
                                          vertical: 10.0,
                                          horizontal: 10.0,
                                        ),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage("images/melon.jpeg"),
                                                fit: BoxFit.fitHeight),
                                            borderRadius: BorderRadius.circular(18.0)
                                        ),
                                      ),
                                      onTap: (){
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => MelonPage()),
                                        );
                                      },
                                    ),
                                    Text(
                                      "Water Melons",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Text("₦300 per/kg"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18),
                          child: Text(
                            "Vegetables and Crops",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18),
                          child: Text(
                            "Fresh greeny vegetables, and harvested crops",
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5.0),
                          height: 300,
                          // alignment: Alignment.center,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Column(
                                  children: [
                                    GestureDetector(
                                      child: Container(
                                        height: Dimensions.height200,
                                        width: Dimensions.width150,
                                        // color: Colors.orange,
                                        margin: EdgeInsets.symmetric(
                                          vertical: 10.0,
                                          horizontal: 10.0,
                                        ),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage("images/beans.jpeg"),
                                                fit: BoxFit.fitHeight),
                                            borderRadius: BorderRadius.circular(18.0)
                                        ),
                                      ),
                                      onTap: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => BeansPage())
                                        );
                                      },
                                    ),
                                    Text(
                                      "Beans",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Text("₦700 per/kg"),
                                  ],
                                ),
                                Column(
                                  children: [
                                    GestureDetector(
                                      child: Container(
                                        height: Dimensions.height200,
                                        width: Dimensions.width150,
                                        // color: Colors.orange,
                                        margin: EdgeInsets.symmetric(
                                          vertical: 10.0,
                                          horizontal: 10.0,
                                        ),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage("images/cassava.jpeg"),
                                                fit: BoxFit.fitHeight),
                                            borderRadius: BorderRadius.circular(18.0)
                                        ),
                                      ),
                                      onTap: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => CassavaPage())
                                        );
                                      },
                                    ),
                                    Text(
                                      "Cassava",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Text("₦650 per/kg"),
                                  ],
                                ),
                                Column(
                                  children: [
                                    GestureDetector(
                                      child: Container(
                                        height: Dimensions.height200,
                                        width: Dimensions.width150,
                                        // color: Colors.orange,
                                        margin: EdgeInsets.symmetric(
                                          vertical: 10.0,
                                          horizontal: 10.0,
                                        ),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage("images/cocoyam.jpeg"),
                                                fit: BoxFit.fitHeight),
                                            borderRadius: BorderRadius.circular(18.0)
                                        ),
                                      ),
                                      onTap: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => CocoYamPage())
                                        );
                                      },
                                    ),
                                    Text(
                                      "CocoYam",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Text("₦600 per/kg"),
                                  ],
                                ),
                                Column(
                                  children: [
                                    GestureDetector(
                                      child: Container(
                                        height: Dimensions.height200,
                                        width: Dimensions.width150,
                                        // color: Colors.orange,
                                        margin: EdgeInsets.symmetric(
                                          vertical: 10.0,
                                          horizontal: 10.0,
                                        ),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage("images/efo_riro.jpeg"),
                                                fit: BoxFit.fitHeight),
                                            borderRadius: BorderRadius.circular(18.0)
                                        ),
                                      ),
                                      onTap: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => EfoPage())
                                        );
                                      },
                                    ),
                                    Text(
                                      "Efo Riro",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Text("₦150 per/kg"),
                                  ],
                                ),
                                Column(
                                  children: [
                                    GestureDetector(
                                      child: Container(
                                        height: Dimensions.height200,
                                        width: Dimensions.width150,
                                        // color: Colors.orange,
                                        margin: EdgeInsets.symmetric(
                                          vertical: 10.0,
                                          horizontal: 10.0,
                                        ),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage("images/okro.jpeg"),
                                                fit: BoxFit.fitHeight),
                                            borderRadius: BorderRadius.circular(18.0)
                                        ),
                                      ),
                                      onTap: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => OkroPage())
                                        );
                                      },
                                    ),
                                    Text(
                                      "Okro",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Text("₦250 per/kg"),
                                  ],
                                ),
                                Column(
                                  children: [
                                    GestureDetector(
                                      child: Container(
                                        height: Dimensions.height200,
                                        width: Dimensions.width150,
                                        // color: Colors.orange,
                                        margin: EdgeInsets.symmetric(
                                          vertical: 10.0,
                                          horizontal: 10.0,
                                        ),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage("images/onions.png"),
                                                fit: BoxFit.fill),
                                            borderRadius: BorderRadius.circular(Dimensions.radius18)
                                        ),
                                      ),
                                      onTap: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => OnionPage())
                                        );
                                      },
                                    ),
                                    Text(
                                      "Onions",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Text("₦500 per/kg"),
                                  ],
                                ),
                                Column(
                                  children: [
                                    GestureDetector(
                                      child: Container(
                                        height: Dimensions.height200,
                                        width: Dimensions.width150,
                                        // color: Colors.orange,
                                        margin: EdgeInsets.symmetric(
                                          vertical: 10.0,
                                          horizontal: 10.0,
                                        ),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage("images/pepper.jpeg"),
                                                fit: BoxFit.fitHeight),
                                            borderRadius: BorderRadius.circular(Dimensions.radius18)
                                        ),
                                      ),
                                      onTap: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => PepperPage())
                                        );
                                      },
                                    ),
                                    Text(
                                      "Pepper",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Text("₦200 per/kg"),
                                  ],
                                ),
                                Column(
                                  children: [
                                    GestureDetector(
                                      child: Container(
                                        height: Dimensions.height200,
                                        width: Dimensions.width150,
                                        // color: Colors.orange,
                                        margin: EdgeInsets.symmetric(
                                          vertical: 10.0,
                                          horizontal: 10.0,
                                        ),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage("images/potatoes.jpeg"),
                                                fit: BoxFit.fitHeight),
                                            borderRadius: BorderRadius.circular(Dimensions.radius18)
                                        ),
                                      ),
                                      onTap: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => PotatoesPage())
                                        );
                                      },
                                    ),
                                    Text(
                                      "Potatoes",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Text("₦450 per/kg"),
                                  ],
                                ),
                                Column(
                                  children: [
                                    GestureDetector(
                                      child: Container(
                                        height: Dimensions.height200,
                                        width: Dimensions.width150,
                                        // color: Colors.orange,
                                        margin: EdgeInsets.symmetric(
                                          vertical: 10.0,
                                          horizontal: 10.0,
                                        ),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage("images/crops.webp"),
                                                fit: BoxFit.fitHeight),
                                            borderRadius: BorderRadius.circular(Dimensions.radius18)
                                        ),
                                      ),
                                      onTap: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => RicePage())
                                        );
                                      },
                                    ),
                                    Text(
                                      "Rice",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Text("₦800 per/kg"),
                                  ],
                                ),
                                Column(
                                  children: [
                                    GestureDetector(
                                      child: Container(
                                        height: Dimensions.height200,
                                        width: Dimensions.width150,
                                        // color: Colors.orange,
                                        margin: EdgeInsets.symmetric(
                                          vertical: 10.0,
                                          horizontal: 10.0,
                                        ),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage("images/tomatoes.jpeg"),
                                                fit: BoxFit.fitHeight),
                                            borderRadius: BorderRadius.circular(Dimensions.radius18)
                                        ),
                                      ),
                                      onTap: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => TomatoesPage())
                                        );
                                      },
                                    ),
                                    Text(
                                      "Tomatoes",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Text("₦250 per/kg"),
                                  ],
                                ),
                                Column(
                                  children: [
                                    GestureDetector(
                                      child: Container(
                                        height: Dimensions.height200,
                                        width: Dimensions.width150,
                                        // color: Colors.orange,
                                        margin: EdgeInsets.symmetric(
                                          vertical: 10.0,
                                          horizontal: 10.0,
                                        ),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage("images/ugu.jpeg"),
                                                fit: BoxFit.fitHeight),
                                            borderRadius: BorderRadius.circular(Dimensions.radius18)
                                        ),
                                      ),
                                      onTap: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => UguPage())
                                        );
                                      },
                                    ),
                                    Text(
                                      "Ugu",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Text("₦150 per/kg"),
                                  ],
                                ),
                                Column(
                                  children: [
                                    GestureDetector(
                                      child: Container(
                                        height: Dimensions.height200,
                                        width: Dimensions.width150,
                                        // color: Colors.orange,
                                        margin: EdgeInsets.symmetric(
                                          vertical: 10.0,
                                          horizontal: 10.0,
                                        ),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(image: AssetImage("images/yam.jpeg"),
                                                fit: BoxFit.fitHeight),
                                            borderRadius: BorderRadius.circular(18.0)
                                        ),
                                      ),
                                      onTap: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => YamPage())
                                        );
                                      },
                                    ),
                                    Text(
                                      "Yam",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Text("₦750 per/kg"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
