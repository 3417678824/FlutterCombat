import 'package:flua/Utils/ColorsUtils.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Toasty {
  
  static normal(String s) {
    return custom(
      s,
      Toast.LENGTH_SHORT,
      ToastGravity.BOTTOM,
      ColorsUtil.hexColor("ffffff"),
      ColorsUtil.hexColor("575757"),
    );
  }

  static center(String s) {
    return custom(
      s,
      Toast.LENGTH_SHORT,
      ToastGravity.CENTER,
      ColorsUtil.hexColor("ffffff"),
      ColorsUtil.hexColor("575757"),
    );
  }

  static normalCustom(String s, String textColor, String backgroundColor) {
    return custom(
      s,
      Toast.LENGTH_SHORT,
      ToastGravity.BOTTOM,
      ColorsUtil.hexColor(textColor),
      ColorsUtil.hexColor(backgroundColor),
    );
  }

  static centerCustom(String s, String textColor, String backgroundColor) {
    return custom(
      s,
      Toast.LENGTH_SHORT,
      ToastGravity.CENTER,
      ColorsUtil.hexColor(textColor),
      ColorsUtil.hexColor(backgroundColor),
    );
  }

  static Future<bool> custom(String msg, Toast toast, ToastGravity gravity,
      Color textColor, Color backgroundColor) {
    return Fluttertoast.showToast(
      msg: msg,
      toastLength: toast,
      gravity: gravity,
      textColor: textColor,
      fontSize: 13,
      backgroundColor: backgroundColor,
    );
  }
}
