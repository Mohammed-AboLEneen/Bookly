import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showToast({

  required String message,
  required Color textColor,
  required Color bgColor,
}){

  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: bgColor,
      textColor: textColor,
      fontSize: 16.0
  );
}