import 'package:flutter/material.dart';

import '../constant.dart';

class SymptomsCard extends StatelessWidget {
  final String image;
  final String title;
  final bool isActive;
  const SymptomsCard({
    Key? key,required this.image,required this.title, this.isActive = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            isActive
            ? BoxShadow(
              offset: Offset(0,1),
              color: Colors.red,
              blurRadius: 10,
            )
            :BoxShadow(
              offset: Offset(0,10),
              color: kShadowColor,
              blurRadius: 20,
            )
          ]
      ),
      child: Column(
        children: <Widget>
        [

          Image.asset(image , height: 90,),
          Text(title,
            style: TextStyle(
              fontWeight: FontWeight.bold,

            ),
          )

        ],
      ),
    );
  }
}
