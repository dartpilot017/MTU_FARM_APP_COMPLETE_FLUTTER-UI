import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mtu_farm_app/pages/loginpage.dart';

import '../utils/dimensions.dart';
import '../widgets/big_text.dart';
import '../widgets/small_text.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // height: 680,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/background.png'),
            colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 50,),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  SizedBox(height: 80,),
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
                        'User signup',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 15.0,
                          color: Colors.green.shade200,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.5,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                    width: 250.0,
                    child: Divider(
                      color: Colors.green,
                    ),
                  ),
                  //textfields
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Card(
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)
                            ),
                            child: Container(
                              height: 50.0,
                              width: Dimensions.width160,
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(
                                      right: 5.5,
                                      left: 5.5,
                                    ),
                                    child: TextField(
                                      keyboardType: TextInputType.name,
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.black
                                      ),
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        icon: Icon(
                                          Icons.abc_rounded,
                                          color: Colors.green.shade200,
                                          size: 30,
                                        ),
                                        hintText: "First name",
                                        hintStyle: TextStyle(
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)
                            ),
                            child: Container(
                              height: 50.0,
                              width: Dimensions.width160,
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(
                                      right: 5.5,
                                      left: 5.5,
                                    ),
                                    child: TextField(
                                      keyboardType: TextInputType.name,
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.black
                                      ),
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        icon: Icon(
                                          Icons.abc_rounded,
                                          color: Colors.green.shade200,
                                          size: 30,
                                        ),
                                        hintText: "Last name",
                                        hintStyle: TextStyle(
                                          fontSize: 16.0,
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
                      SizedBox(height: 10,),
                      Card(
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)
                        ),
                        child: Container(
                          height: 50.0,
                          width: 350.0,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(
                                  right: 10.5,
                                  left: 10.5,
                                ),
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.black
                                  ),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    icon: Icon(
                                      Icons.phone_sharp,
                                      color: Colors.green.shade200,
                                    ),
                                    hintText: "Enter number",
                                    hintStyle: TextStyle(
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Card(
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)
                        ),
                        child: Container(
                          height: 50.0,
                          width: 350.0,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(
                                  right: 10.5,
                                  left: 10.5,
                                ),
                                child: TextField(
                                  keyboardType: TextInputType.name,
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.black
                                  ),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    icon: Icon(
                                      Icons.email,
                                      color: Colors.green.shade200,
                                    ),
                                    hintText: "Enter email",
                                    hintStyle: TextStyle(
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Card(
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)
                        ),
                        child: Container(
                          height: 50.0,
                          width: 350.0,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(
                                  right: 10.5,
                                  left: 10.5,
                                ),
                                child: TextField(
                                  keyboardType: TextInputType.name,
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.black
                                  ),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    icon: Icon(
                                      Icons.lock,
                                      color: Colors.green.shade200,
                                    ),
                                    hintText: "Enter password",
                                    hintStyle: TextStyle(
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Card(
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)
                        ),
                        child: Container(
                          height: 50.0,
                          width: 350.0,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(
                                  right: 10.5,
                                  left: 10.5,
                                ),
                                child: TextField(
                                  keyboardType: TextInputType.name,
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.black
                                  ),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    icon: Icon(
                                      Icons.lock,
                                      color: Colors.green.shade200,
                                    ),
                                    hintText: "Confirm password",
                                    hintStyle: TextStyle(
                                      fontSize: 16.0,
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
                          onPressed: (){},
                          child: SmallText(text: '', color: Colors.green.shade200,size: 20,)
                      ),
                      TextButton(
                          onPressed: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => LoginPage()));
                          },
                          child: SmallText(text: 'have an account?', color: Colors.green.shade200, size: 15,)
                      ),
                    ],
                  ),
                  SizedBox(height: 5,),
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                            onTap: (){

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
                                  child: BigText(text: "REGISTER", color: Colors.white,)
                              ),
                            ),
                          )
                    ]
                      ),
                    ],
                  ),
            ),
          ]

        ),
      ),
    );
  }
}
