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
import 'package:mtu_farm_app/pages/fruits/apple.dart';
import 'package:mtu_farm_app/pages/fruits/banana.dart';
import 'package:mtu_farm_app/pages/fruits/grapepage.dart';
import 'package:mtu_farm_app/pages/fruits/melonpage.dart';
import 'package:mtu_farm_app/pages/fruits/oranges.dart';
import 'package:mtu_farm_app/pages/fruits/strawberrypage.dart';
import 'package:mtu_farm_app/widgets/products_column_widget.dart';

import 'package:mtu_farm_app/pages/fruits/mangoespage.dart';

class ProductsHomePage extends StatefulWidget {
  const ProductsHomePage({Key? key}) : super(key: key);

  @override
  State<ProductsHomePage> createState() => _ProductsHomePageState();
}

class _ProductsHomePageState extends State<ProductsHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          // width: 400,
          // height: 100,
          color: Colors.greenAccent.shade700,
          child: Column(
            children: <Widget>[
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    Icon(
                      Icons.menu_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                    Icon(
                      Icons.shopping_cart_rounded,
                      color: Colors.white,
                      size: 30,
                    )
                  ],
                ),
              ),
              Container(
                height: 718.9,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(18),
                        topLeft: Radius.circular(18)
                    ),
                    color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 30,),
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

                    //Container for fruits widgets display
                    //displaying the apple,
                    //Banana,
                    //Gapes
                    //and other fruits widgets

                    Container(
                      height: 260,
                      // color: Colors.pinkAccent,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: <Widget>[
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => ApplePage()));
                                },
                                child: ProductsContainer( text1: "Apples", text2: "#300/kg", image: "assets/images/apple.jpeg",),
                              ),
                              SizedBox(width: 10,),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => BananaPage()));
                                },
                                child: ProductsContainer( text1: "Banana", text2: "#300/kg", image: "assets/images/banana.jpg",),
                              ),
                              SizedBox(width: 10,),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => GrapePage()));
                                },
                                child: ProductsContainer( text1: "Grapes", text2: "#300/kg", image: "assets/images/grapes.jpeg",),
                              ),
                              SizedBox(width: 10,),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => MangoPage()));
                                },
                                child: ProductsContainer( text1: "Mangoes", text2: "#300/kg", image: "assets/images/Mangoes.png",),
                              ),
                              SizedBox(width: 10,),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => OrangePage()));
                                },
                                child: ProductsContainer( text1: "Oranges", text2: "#300/kg", image: "assets/images/oranges.webp",),
                              ),
                              SizedBox(width: 10,),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => MelonPage()));
                                },
                                child: ProductsContainer( text1: "Melons", text2: "#300/kg", image: "assets/images/melon.jpeg",),
                              ),
                              SizedBox(width: 10,),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => StrawberryPage()));
                                },
                                child: ProductsContainer( text1: "Strawberry", text2: "#300/kg", image: "assets/images/strawberry.jpeg",),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
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
                    //Container for vegetable widgets display
                    Container(
                      height: 260,
                      // color: Colors.orange,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: <Widget>[
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => BeansPage()));
                                },
                                child: ProductsContainer( text1: "Beans", text2: "#700/kg", image: "assets/images/beans.jpeg",),
                              ),
                              SizedBox(width: 10,),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => CassavaPage()));
                                },
                                child: ProductsContainer( text1: "Cassava", text2: "#650/kg", image: "assets/images/cassava.jpeg",),
                              ),
                              SizedBox(width: 10,),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => CocoYamPage()));
                                },
                                child: ProductsContainer( text1: "Coco-Yam", text2: "#600/kg", image: "assets/images/cocoyam.jpeg",),
                              ),
                              SizedBox(width: 10,),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => EfoPage()));
                                },
                                child: ProductsContainer( text1: "Efo-riro", text2: "#150/kg", image: "assets/images/efo_riro.jpeg",),
                              ),
                              SizedBox(width: 10,),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => OkroPage()));
                                },
                                child: ProductsContainer( text1: "Okro", text2: "#250/kg", image: "assets/images/okro.jpeg",),
                              ),
                              SizedBox(width: 10,),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => OnionPage()));
                                },
                                child: ProductsContainer( text1: "Onions", text2: "#500/kg", image: "assets/images/onions.png",),
                              ),
                              SizedBox(width: 10,),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => PepperPage()));
                                },
                                child: ProductsContainer( text1: "Pepper", text2: "#200/kg", image: "assets/images/pepper.jpeg",),
                              ),
                              SizedBox(width: 10,),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => PotatoesPage()));
                                },
                                child: ProductsContainer( text1: "Potatoes", text2: "#450/kg",image: "assets/images/potatoes.jpeg",),
                              ),
                              SizedBox(width: 10,),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => RicePage()));
                                },
                                child: ProductsContainer( text1: "Rice", text2: "#800/kg", image: "assets/images/crops.webp",),
                              ),
                              SizedBox(width: 10,),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => TomatoesPage()));
                                },
                                child: ProductsContainer( text1: "Tomatoes", text2: "#250/kg", image: "assets/images/tomatoes.jpeg",),
                              ),
                              SizedBox(width: 10,),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => UguPage()));
                                },
                                child: ProductsContainer( text1: "Ugwu", text2: "#150/kg", image: "assets/images/ugu.jpeg",),
                              ),
                              SizedBox(width: 10,),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => YamPage()));
                                },
                                child: ProductsContainer( text1: "Yam", text2: "#750/kg", image: "assets/images/yam.jpeg",),
                              ),
                            ],
                          ),
                        ),
                      ),
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
