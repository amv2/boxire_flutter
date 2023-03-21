// ignore_for_file: must_be_immutable

import 'package:boxire_flutter/themes/theme_provider.dart';
import 'package:boxire_flutter/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomProductCard extends StatelessWidget {
  CustomProductCard({
    Key? key,
    required this.featurePage,
    required this.title,
  }) : super(key: key);

  final Widget featurePage;
  String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => featurePage),
        );
      },
      child: Container(
        width: 350,
        height: 205,
        decoration: BoxDecoration(
          color: Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
              ? Colors.grey.shade700
              : Colors.grey.shade200,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(children: [
          const SizedBox(height: 40),
          SizedBox(
            height: 100,
            child: Center(
              child: CustomText(
                text: title, // max 22 char
                size: 23,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
