import 'package:boxire_flutter/widgets/custom_back_button.dart';
import 'package:boxire_flutter/widgets/custom_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => AccountScreenState();
}

class AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 50,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CustomBackButton(buttonFunction: () {
                  Navigator.of(context).pop();
                }),
                CustomHeader(headerText: "Account"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
