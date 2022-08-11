// import 'package:dots_indicator/dots_indicator.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import 'package:mtu_farm_app/widgets/big_text.dart';
// import 'package:mtu_farm_app/widgets/small_text.dart';
//
// import '../../utils/dimensions.dart';
// import '../../widgets/icon_text_widgets.dart';
//
//
//
// class FruitsPage extends StatefulWidget {
//   const FruitsPage({Key? key}) : super(key: key);
//
//   @override
//   State<FruitsPage> createState() => _FruitsPageState();
// }
//
// class _FruitsPageState extends State<FruitsPage> {
//   PageController pageController = PageController(viewportFraction: 0.85);
//   var _currPageValue = 0.0;
//   double _scaleFactor = 0.8;
//   double _height = Dimensions.pageViewContainer;
//
//   @override
//   void initState() {
//     super.initState();
//     pageController.addListener(() {
//       setState(() {
//         _currPageValue = pageController.page!;
//       });
//     });
//   }
//
//   @override
//   void dispose() {
//     pageController.dispose();
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         //Slider container
//         Container(
//           height: Dimensions.pageView,
//           child: PageView.builder(
//             controller: pageController,
//             itemCount: 5,
//             itemBuilder: (context, position) {
//               return _buildPageItem(position);
//             },
//           ),
//           // color: Colors.redAccent,
//         ),
//         //Dots indicator below the slider widget
//         new DotsIndicator(
//           dotsCount: 5,
//           position: _currPageValue,
//           decorator: DotsDecorator(
//               activeColor: Colors.green.shade200,
//               size: const Size.square(9.0),
//               activeSize: const Size(18.0, 9.0),
//               activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))
//           ),
//         ),
//         SizedBox(height: 30,),
//         //Popular Fruits
//         Container(
//           margin: EdgeInsets.only(left: 30),
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               BigText(text: "Popular Fruits"),
//               SizedBox(width: 10,),
//               Container(
//                 margin: EdgeInsets.only(bottom: 3),
//                 child: SmallText(text: "."),
//               ),
//               SizedBox(width: 10,),
//               Container(
//                 margin: EdgeInsets.only(bottom: 2),
//                 child: SmallText(text: "Fruits Available"),
//               )
//             ],
//           ),
//         ),
//         // ListView.builder(
//         //   itemCount: 3,
//         //   itemBuilder: (context, index){
//         //     return Container(
//         //       margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
//         //       // child: Row(
//         //       //   children: [
//         //       //   ],
//         //       // ),
//         //     );
//         //   }
//         //
//         // )
//       ],
//     );
//   }
//
//   Widget _buildPageItem(int index) {
//     Matrix4 matrix = new Matrix4.identity();
//     if (index==_currPageValue.floor()) {
//       var currScale=1-(_currPageValue-index)*(1-_scaleFactor);
//       var currTrans=_height*(1-currScale)/2;
//       matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
//     }
//     else if (index==_currPageValue.floor()+1) {
//       var currScale=_scaleFactor+(_currPageValue-index+1)*(1-_scaleFactor);
//       var currTrans=_height*(1-currScale)/2;
//       matrix = Matrix4.diagonal3Values(1, currScale, 1);
//       matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
//     }
//     else if (index==_currPageValue.floor()-1) {
//       var currScale=1-(_currPageValue-index)*(1-_scaleFactor);
//       var currTrans=_height*(1-currScale) / 2;
//       matrix = Matrix4.diagonal3Values(1, currScale, 1);
//       matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
//     }
//     else{
//       var currScale=0.8;
//       matrix=Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, _height*(1-_scaleFactor)/2, 1);
//     }
//
//     return Transform(
//         transform: matrix,
//         child: Stack(
//           children: [
//             Container(
//               height: Dimensions.pageViewContainer,
//               margin: EdgeInsets.only(
//                   left: 10,
//                   right: 10
//               ),
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(30),
//                   color: index.isEven ? Colors.green : Colors.green.shade400,
//                   image: DecorationImage(
//                       fit: BoxFit.cover,
//                       image: AssetImage(
//                           "images/apple.jpeg"
//                       )
//                   )
//               ),
//             ),
//             Align(
//                 alignment: Alignment.bottomCenter,
//                 child: Container(
//                     height: Dimensions.pageViewTextContainer,
//                     margin: EdgeInsets.only(
//                       left: 30,
//                       right: 30,
//                       bottom: 30,
//                     ),
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         color: Colors.white,
//                         boxShadow: [
//                           BoxShadow(
//                               color: Colors.black12,
//                               blurRadius: 5.0,
//                               offset: Offset(0 ,5)
//                           ),
//                           BoxShadow(
//                               color: Colors.white,
//                               // blurRadius: 5.0,
//                               offset: Offset(-5 ,0)
//                           ),
//                           BoxShadow(
//                               color: Colors.white,
//                               // blurRadius: 5.0,
//                               offset: Offset(5 ,0)
//                           ),
//                         ]
//                     ),
//                     child: Container(
//                         padding: EdgeInsets.only(top: 15, right: 15, left: 15),
//                         child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               BigText(text: "Apple"),
//                               SizedBox(height: 10,),
//                               Row(
//                                 children: [
//                                   Wrap(
//                                     children: List.generate(5, (index) {
//                                       return Icon(
//                                         Icons.star,
//                                         color: Colors.orangeAccent.shade100,
//                                         size: 15,);
//                                     }),
//                                   ),
//                                   SizedBox(width: Dimensions.width15,),
//                                   SmallText(text: "4.5", color: Colors.black38,),
//                                   SizedBox(width: 10,),
//                                   SmallText(text: "1287", color: Colors.black38,),
//                                   SizedBox(width: 10,),
//                                   SmallText(text: "comments", color: Colors.black38,)
//                                 ],
//                               ),
//                               SizedBox(height: 20,),
//                               Row(
//                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     IconsAndTextWidget(
//                                         icon: Icons.circle_rounded,
//                                         text: "Normal",
//                                         color: Colors.black38,
//                                         iconColor: Colors.orangeAccent.shade100),
//                                     // SizedBox(width: 20,),
//                                     IconsAndTextWidget(
//                                         icon: Icons.location_on,
//                                         text: "1.4km",
//                                         color: Colors.black38,
//                                         iconColor: Colors.green.shade200),
//                                     // SizedBox(width: 20,),
//                                     IconsAndTextWidget(
//                                         icon: Icons.access_time_rounded,
//                                         text: "48min",
//                                         color: Colors.black38,
//                                         iconColor: Colors.redAccent.shade100)
//                                   ]
//                               )
//                             ]
//                         )
//                     )
//                 )
//             ),
//           ],
//         )
//     );
//   }
// }

import 'package:flutter/cupertino.dart';

class FruitsPage extends StatefulWidget {
  const FruitsPage({Key? key}) : super(key: key);

  @override
  State<FruitsPage> createState() => _FruitsPageState();
}

class _FruitsPageState extends State<FruitsPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
