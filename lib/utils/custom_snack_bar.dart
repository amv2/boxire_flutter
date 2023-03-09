import 'package:boxire_flutter/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomSnackBar {
  static showSnackBar(BuildContext context, String? message) {
    if (message == null) return;

    final snackBar = SnackBar(
      content: Text(message),
      backgroundColor: const Color(0xffBC2D21),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  static snackBarAlert(BuildContext context, String? message) {
    if (message == null) return;

    final snackBar = SnackBar(
      content: CustomText(
        text: message,
        size: 15,
        // headerColor: Colors.white,
      ),
      backgroundColor: const Color(0xff499CEB),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
