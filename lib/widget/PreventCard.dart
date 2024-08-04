import 'package:flutter/material.dart';

import '../constant.dart';

class PreventCard extends StatelessWidget {

  final String image;
  final String title;
  final String text;

  const PreventCard({
    Key? key, required this.image, required this.title, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: SizedBox(
        height: 156,
        child: Stack(
          children: <Widget>
          [
            Container(
              height: 136,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,8),
                      color: kShadowColor,
                      blurRadius: 24,

                    )
                  ]
              ),
            ),
            Image.asset(image),
            Positioned(
              left: 130,
              child: Container(
                height: 136,
                width: MediaQuery.of(context).size.width - 170,
                padding: EdgeInsets.symmetric(vertical: 15 , horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: <Widget>
                  [
                    Text(title , style: kTitleTextstyle.copyWith(fontSize: 16),),

                    Text(text),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Icon(Icons.arrow_forward_ios_outlined),
                    )

                  ],
                ),
              ),




            )





          ],
        ),



      ),
    );
  }
}
