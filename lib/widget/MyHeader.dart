import 'package:covid_19_application/InfoScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constant.dart';

class MyHeader extends StatelessWidget {

  final String image;
  final String title1;
  final String title2;
  final bool isInHomePage ;


  const MyHeader({Key? key,required this.image,required this.title1,required this.title2, this.isInHomePage = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        padding: EdgeInsets.only(left: 40, top: 50, right: 20),
        width: double.infinity,
        height: 350,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blue.shade50,
                Colors.blueAccent,
              ]),
          image: DecorationImage(
              image: AssetImage(image)),
        ),
        child: Column(
          children: <Widget>[
            Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: 25,
                  height: 25,
                  child: GestureDetector(
                    onTap:(){
                      isInHomePage ?
                      Navigator.push(context, MaterialPageRoute(builder: (context) => InfoScreen()))
                      : Navigator.pop(context);

                      },
                      child: SvgPicture.asset("assets/icons/menu.svg"))),
                  //child: Image.asset("assets/images/wear_mask.png"),

            ),

            SizedBox(
              height: 20,
            ),
            Expanded(
                child: Stack(
                  children: <Widget>[

                    Positioned(
                      top: 30,
                      left: 60,
                      child: Text(
                        " ${title1}\n ${title2} ",
                        style:
                        kHeadingTextStyle.copyWith(color: Colors.blueAccent[700] ,fontSize: 25 , fontWeight: FontWeight.bold,fontFamily: "Poppins"),
                      ),
                    ),
                    Container(),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    /// Adds a straight line segment from the current point (0) to the given
    /// point(size.height - 80).
    path.lineTo(0, size.height - 80);

    /// Adds a quadratic bezier segment that curves from the current
    /// point to the point at the offset (x2,y2) from the current point,
    /// using the control point at the offset (x1,y1) from the current
    /// point.

    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

