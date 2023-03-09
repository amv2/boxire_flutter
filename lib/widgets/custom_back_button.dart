// ignore_for_file: must_be_immutable

import 'package:boxire_flutter/themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomBackButton extends StatelessWidget {
  CustomBackButton({
    required this.buttonFunction,
    Key? key,
  }) : super(key: key);

  void Function()? buttonFunction;

  @override
  Widget build(BuildContext context) {
    var iconColor =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? Colors.white
            : Colors.black;

    return Container(
      alignment: const Alignment(-1.15, 0),
      child: TextButton(
        onPressed: buttonFunction,
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: SizedBox(
          width: 20,
          height: 20,
          child: Icon(
            Icons.arrow_back,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
