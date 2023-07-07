import 'package:flutter/material.dart';
class textfield extends StatelessWidget {
  bool value;
  String text;
  IconData icon;

  textfield({
    required this.icon,
    required this.text,
    required this.value,
  });
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4.0,
      shadowColor: Colors.black38,
      child: TextFormField(
        keyboardType: TextInputType.text,
        obscureText: value,
        decoration: InputDecoration(
            hintText: text,
            prefixIcon: Icon(
              icon,
              color: Color(0xff4EBBBE),
            ),
            border: InputBorder.none,
            // border: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(10.0),
            // ),
            contentPadding: EdgeInsets.all(0),
            hintStyle: TextStyle(
              fontWeight: FontWeight.w500,
              height: 2.25,
              color: Color(0xff137C86),
            )),
      ),
    );
  }
}