import 'package:boxire_flutter/themes/theme_provider.dart';
import 'package:boxire_flutter/utils/custom_snack_bar.dart';
import 'package:boxire_flutter/widgets/custom_back_button.dart';
import 'package:boxire_flutter/widgets/custom_header.dart';
import 'package:boxire_flutter/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class ThemeScreen extends StatefulWidget {
  const ThemeScreen({super.key});

  @override
  State<ThemeScreen> createState() => ThemeScreenState();
}

class ThemeScreenState extends State<ThemeScreen> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final provider = Provider.of<ThemeProvider>(context, listen: false);

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
                CustomHeader(headerText: "Theme"),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Icon(Icons.dark_mode),
                    const SizedBox(width: 5),
                    Expanded(
                      child: CustomText(
                        text: "Enable Dark Theme",
                        size: 16,
                        // color: Colors.grey,
                        textAlignment: TextAlign.left,
                      ),
                    ),
                    Switch.adaptive(
                      value: themeProvider.isDarkMode,
                      onChanged: (value) {
                        provider.toggleTheme(value);
                        CustomSnackBar.snackBarAlert(
                          context,
                          "Theme Updated!",
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
