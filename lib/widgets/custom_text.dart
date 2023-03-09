// ignore_for_file: must_be_immutable

import 'package:boxire_flutter/themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CustomText extends StatelessWidget {
  CustomText({
    required this.text,
    required this.size,
    this.textAlignment = TextAlign.center,
    Key? key,
  }) : super(key: key);

  String text;
  double size;
  TextAlign? textAlignment;

  @override
  Widget build(BuildContext context) {
    var textColor =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? Colors.white
            : Colors.black;

    return Text(
      text,
      textAlign: textAlignment,
      style: GoogleFonts.baloo2(
        fontSize: size,
        fontWeight: FontWeight.w500,
        height: 1.5,
        color: textColor,
      ),
    );
  }
}
