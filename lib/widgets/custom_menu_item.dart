// ignore_for_file: must_be_immutable

import 'package:boxire_flutter/themes/theme_provider.dart';
import 'package:boxire_flutter/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomMenuItem extends StatelessWidget {
  CustomMenuItem({
    required this.prefixIcon,
    required this.text,
    required this.buttonFunction,
    Key? key,
  }) : super(key: key);

  IconData prefixIcon;
  String text;
  void Function()? buttonFunction;

  @override
  Widget build(BuildContext context) {
    var iconColor =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? Colors.white
            : Colors.black;

    return SizedBox(
      height: 60,
      // width: 306,
      child: TextButton(
        onPressed: buttonFunction,
        child: Row(children: [
          Icon(
            prefixIcon,
            size: 30,
            color: iconColor,
          ),
          const SizedBox(width: 30),
          Expanded(
            child: CustomText(
              text: text,
              size: 20,
              textAlignment: TextAlign.left,
            ),
          ),
          Icon(
            Icons.keyboard_arrow_right,
            size: 30,
            color: iconColor,
          )
        ]),
      ),
    );
  }
}
