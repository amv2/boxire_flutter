import 'package:boxire_flutter/themes/theme_provider.dart';
import 'package:boxire_flutter/widgets/custom_back_button.dart';
import 'package:boxire_flutter/widgets/custom_header.dart';
import 'package:boxire_flutter/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class SecureAuthentication extends StatefulWidget {
  const SecureAuthentication({super.key});

  @override
  State<SecureAuthentication> createState() => _SecureAuthenticationState();
}

class _SecureAuthenticationState extends State<SecureAuthentication> {
  @override
  Widget build(BuildContext context) {
    String longString =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eius mod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eius mod tempor. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.";

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
                CustomHeader(headerText: "Secure Authentication"),
                const SizedBox(height: 30),
                Container(
                  width: 360,
                  height: MediaQuery.of(context).size.height * 3.25,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Provider.of<ThemeProvider>(context).themeMode ==
                            ThemeMode.dark
                        ? const Color.fromARGB(255, 56, 56, 56)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x19000000),
                        offset: Offset(2, 4),
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      CustomText(
                        text: longString,
                        size: 20,
                        textAlignment: TextAlign.justify,
                      ),
                      const SizedBox(height: 20),
                      CustomText(
                        text: longString,
                        size: 20,
                        textAlignment: TextAlign.justify,
                      ),
                      const SizedBox(height: 20),
                      CustomText(
                        text: longString,
                        size: 20,
                        textAlignment: TextAlign.justify,
                      ),
                      const SizedBox(height: 20),
                      CustomText(
                        text: longString,
                        size: 20,
                        textAlignment: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
