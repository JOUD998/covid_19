import 'package:flutter/material.dart';

import '../constant.dart';

class Counter extends StatelessWidget {

  final int number;
  final Color color;
  final String title;

  const Counter({
    Key? key, required this.number,required this.color,required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(6),
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color.withOpacity(0.26),

          ),
          child: Container(

            decoration: BoxDecoration(
                color: Colors.transparent, //شفااف
                shape: BoxShape.circle,
                border: Border.all(
                  color: color,
                  width: 2,
                )

            ),
          ),
        ),
        SizedBox(height: 10,),
        Text("${number}",
          style: TextStyle(
              fontSize: 40,
              color: color
          ),
        ),
        Text(
          "${title}",
          style: kSubTextStyle,
          /*style: TextStyle(
            color: color,
          ),*/
        )
      ],
    );
  }
}
