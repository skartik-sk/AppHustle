import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showtost1()=>Fluttertoast.showToast(
    msg: "Please refresh after new additon",
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.white70,
    textColor: Colors.black87,
    fontSize: 16.0
);