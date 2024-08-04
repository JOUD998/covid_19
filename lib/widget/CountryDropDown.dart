import 'package:flutter/material.dart';
class CountryDropDown extends StatelessWidget {
  const CountryDropDown({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: Color(0xFFE5E5E5)),
      ),
      child: Row(
        children: <Widget>[
          const Icon(
            Icons.location_on,
            color: Colors.lightBlueAccent,
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
              child: DropdownButton(
                isExpanded: true,
                value: "Indonesia",
                underline: SizedBox(),
                items: ["Indonesia", "Bangladesh", "United State", "Japan"]
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (value) {},
              )),
        ],
      ),
    );
  }
}
