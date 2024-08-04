
import 'package:covid_19_application/widget/Counter.dart';
import 'package:covid_19_application/widget/CountryDropDown.dart';
import 'package:covid_19_application/widget/MyHeader.dart';
import 'package:flutter/material.dart';

import 'constant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          MyHeader(image: "assets/images/virus.png", title1: "ALL YOU NEED", title2: "IS STAY AT HOME"),
          CountryDropDown(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    RichText(
                      text: const TextSpan(children: [
                        TextSpan(
                          text: "Case Updated\n",
                          style: kTitleTextstyle,
                        ),
                        TextSpan(
                          text: "last update 26 September",
                          style: TextStyle(color: kTextLightColor),
                        )
                      ]
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      "See details",
                      style: TextStyle(
                          color: kPrimaryColor, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 4),
                            blurRadius: 30,
                            color: kShadowColor)
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>
                    [
                      Counter(
                          color: kInfectedColor,
                          number: 1054,
                          title : "Infected"
                      ),
                      Counter(
                          color: kDeathColor,
                          number: 94,
                          title : "Death"
                      ),
                      Counter(
                        color: kRecovercolor,
                        number: 55,
                        title : "recovered",)


                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>
                  [
                    Text(
                      "Spread of virus",
                      style: kTitleTextstyle,
                    ),
                    Text(
                      "See details",
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w600
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  width: double.infinity,
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0,10),
                            color: kShadowColor,
                            blurRadius: 30
                        )
                      ]
                  ),
                  child: Image.asset("assets/images/map.png"
                    ,fit: BoxFit.cover,
                  ),
                )

              ],
            ),
          ),
        ],
      ),
    );
  }
}



