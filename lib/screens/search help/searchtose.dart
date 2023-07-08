import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showtost3()=>Fluttertoast.showToast(
    msg: "This page under construction",
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.white70,
    textColor: Colors.black87,
    fontSize: 16.0
);