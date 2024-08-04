import 'package:covid_19_application/constant.dart';
import 'package:covid_19_application/widget/MyHeader.dart';
import 'package:covid_19_application/widget/PreventCard.dart';
import 'package:covid_19_application/widget/SymptosCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>
          [
            MyHeader(image: "assets/images/virus.png", title1: "Get to know".toUpperCase(), title2: "about COVID-19".toUpperCase(), isInHomePage: false,),
            Padding(
                padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>
                [

                  Text("Symptoms"
                  ,style: kTitleTextstyle,
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>
                    [
                      SymptomsCard(image: "assets/images/headache.png",title: "Headache", isActive: true),
                      SymptomsCard(image: "assets/images/caugh.png",title: "Caugh",),
                      SymptomsCard(image: "assets/images/fever.png",title: "Fever",),





                    ],
                  ),
                  SizedBox(height: 20,),
                  Text("Preventation" , style: kTitleTextstyle,),
                  SizedBox(height: 20,),
                  PreventCard(image: "assets/images/wear_mask.png", title: "Wear Mask",text: "Mask is very powerful to avoid COVID-19 virus",),
                  PreventCard(image: "assets/images/wash_hands.png", title: "Wash hands",text: "Wash your hands regularly",),
                  SizedBox(height: 50,),
                ],



              ),






            ),



          ],
        ),
      ),
    );
  }
}

