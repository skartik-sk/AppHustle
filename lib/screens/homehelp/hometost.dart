import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void hometost()=>Fluttertoast.showToast(
    msg: "you can assess history form app drawer",
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.white70,
    textColor: Colors.black87,
    fontSize: 16.0
);