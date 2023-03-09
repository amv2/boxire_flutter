import 'package:boxire_flutter/views/settings_views/account.dart';
import 'package:boxire_flutter/views/settings_views/connect.dart';
import 'package:boxire_flutter/views/settings_views/information.dart';
import 'package:boxire_flutter/views/settings_views/signout.dart';
import 'package:boxire_flutter/views/settings_views/support.dart';
import 'package:boxire_flutter/views/settings_views/theme.dart';
import 'package:boxire_flutter/widgets/custom_header.dart';
import 'package:boxire_flutter/widgets/custom_menu_item.dart';
import 'package:boxire_flutter/widgets/custom_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
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
                CustomHeader(headerText: "Settings"),
                const SizedBox(height: 30),
                CustomProfile(),
                const SizedBox(height: 30),
                CustomMenuItem(
                  prefixIcon: Icons.person,
                  text: "Account",
                  buttonFunction: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AccountScreen(),
                      ),
                    );
                  },
                ),
                CustomMenuItem(
                  prefixIcon: Icons.dark_mode,
                  text: "Theme",
                  buttonFunction: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ThemeScreen(),
                      ),
                    );
                  },
                ),
                CustomMenuItem(
                  prefixIcon: Icons.link,
                  text: "Connect",
                  buttonFunction: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ConnectScreen(),
                      ),
                    );
                  },
                ),
                CustomMenuItem(
                  prefixIcon: Icons.info,
                  text: "Information",
                  buttonFunction: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const InformationScreen(),
                      ),
                    );
                  },
                ),
                CustomMenuItem(
                  prefixIcon: Icons.help,
                  text: "Support",
                  buttonFunction: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SupportScreen(),
                      ),
                    );
                  },
                ),
                CustomMenuItem(
                  prefixIcon: Icons.logout,
                  text: "Sign Out",
                  buttonFunction: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignOutScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
