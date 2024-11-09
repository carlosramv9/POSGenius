import 'package:flutter/material.dart';
import 'package:posgenius/utilities/util.dart';

void showSnackBar(BuildContext context, {String text = '', double width = 801, Color? backgroundColor}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
      showCloseIcon: true,
      behavior: SnackBarBehavior.floating,
      elevation: 8,
      width: getSnackBarWidth(width),
      backgroundColor: backgroundColor,
    ),
  );
}
