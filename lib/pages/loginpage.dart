import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mtu_farm_app/pages/home/homepage.dart';
import 'package:mtu_farm_app/pages/siguppage.dart';
import 'package:mtu_farm_app/widgets/small_text.dart';

import '../utils/dimensions.dart';
import '../widgets/big_text.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/background.png'),
              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
            ),
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: Dimensions.width10, right: Dimensions.width10),
                child: Column(
                  children: [
                    SizedBox(height: Dimensions.height100,),
                    //centered logo
                    Center(
                      child: Container(
                        width: Dimensions.width150,
                        height: Dimensions.height150,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('assets/images/mtu.jpg'),
                        ),
                      ),
                    ),
                    //texts
                    Column(
                      children: [
                        Text(
                          'MTU\'S FARM APP',
                          style: TextStyle(
                            fontFamily: 'Yellowtail',
                            fontSize: 25.0,
                            color: Colors.green.shade400,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'User login',
                          style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            fontSize: 15.0,
                            color: Colors.green.shade300,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2.5,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                      width: Dimensions.width250,
                      child: Divider(
                        color: Colors.green,
                      ),
                    ),
                    //textfields
                    Column(
                      children: [
                        Card(
                          elevation: 2.0,
                          // color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)
                          ),
                          margin: EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: 10.5,
                          ),
                          child: Container(
                            height: 50.0,
                            width: 450.0,
                            child: Column(
                              children: <Widget> [
                                Padding(
                                  padding: EdgeInsets.only(
                                    right: 10.5,
                                    left: 10.5,
                                  ),
                                  child: TextField(
                                    keyboardType: TextInputType.emailAddress,
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.black,
                                    ),
                                    enableSuggestions: false,
                                    autocorrect: false,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      icon: Icon(
                                        Icons.email,
                                        color: Colors.black,
                                        size: 20.5,
                                      ),
                                      hintText: "Enter email",
                                      hintStyle: TextStyle(
                                          fontSize: 16.0
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          color: Colors.white,
                          margin: EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: 10.0,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)
                          ),
                          child: Container(
                            height: 50.0,
                            width: 450.0,
                            child: Column(
                              children: <Widget> [
                                Padding(
                                  padding: EdgeInsets.only(
                                    right: 10.5,
                                    left: 10.5,
                                  ),
                                  child: TextField(
                                    keyboardType: TextInputType.emailAddress,
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.black,
                                    ),
                                    obscureText: true,
                                    obscuringCharacter: "*",
                                    enableSuggestions: false,
                                    autocorrect: false,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      icon: Icon(
                                        Icons.lock,
                                        color: Colors.black,
                                        size: 20.5,
                                      ),
                                      hintText: "Enter password",
                                      hintStyle: TextStyle(
                                          fontSize: 16.0
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    //signup and password reset
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => SignupPage()));
                            },
                            child: SmallText(text: 'Register', color: Colors.green.shade400,size: 20,)
                        ),
                        TextButton(
                            onPressed: (){},
                            child: SmallText(text: 'forgot password?', color: Colors.green.shade400, size: 15,)
                        ),
                      ],
                    ),
                    SizedBox(height: Dimensions.height5,),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ProductsHomePage()));
                          },
                          child: Container(
                            padding: EdgeInsets.only(
                                top: Dimensions.height20, bottom: Dimensions.height20, left: Dimensions.width20, right: Dimensions.width20
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(Dimensions.radius20),
                                color: Colors.green.shade400
                            ),
                            child: Center(
                                child: BigText(text: "LOGIN", color: Colors.white,)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
