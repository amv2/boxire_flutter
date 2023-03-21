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
    required this.imgUrl,
  }) : super(key: key);

  final Widget featurePage;
  String title;
  String imgUrl;

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
        height: 255,
        decoration: BoxDecoration(
          color: Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
              ? Colors.grey.shade700
              : Colors.grey.shade200,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(imgUrl),
            fit: BoxFit.cover,
            opacity: 0.7,
          ),
        ),
        child: Center(
          child: Stack(children: [
            const SizedBox(height: 40),
            SizedBox(
              height: 100,
              child: CustomText(
                text: title, // max 22 char
                size: 26,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
