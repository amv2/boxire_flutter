// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomProfile extends StatelessWidget {
  const CustomProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 110,
        width: 110,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(55),
          color: const Color(0xff5A5A5A),
        ),
      ),
    );
  }
}
