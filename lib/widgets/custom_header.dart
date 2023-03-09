// ignore_for_file: must_be_immutable

import 'package:boxire_flutter/themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CustomHeader extends StatelessWidget {
  CustomHeader({
    required this.headerText,
    Key? key,
  }) : super(key: key);

  String headerText;

  @override
  Widget build(BuildContext context) {
    var textColor =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? Colors.white
            : Colors.black;

    return Center(
      child: Text(
        headerText,
        textAlign: TextAlign.center,
        style: GoogleFonts.baloo2(
          fontSize: 30,
          fontWeight: FontWeight.w500,
          height: 1.5,
          color: textColor,
        ),
      ),
    );
  }
}
