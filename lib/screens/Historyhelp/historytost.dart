import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void historytost()=>Fluttertoast.showToast(
    msg: "you can tap on any of the items from search tab that will reflect here",
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.white70,
    textColor: Colors.black87,
    fontSize: 16.0
);