import 'package:boxire_flutter/themes/theme_provider.dart';
import 'package:boxire_flutter/widgets/custom_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
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
                CustomHeader(headerText: "Dashboard"),
                Container(
                  width: 350,
                  height: 255,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                      image: AssetImage(
                          'assets/images/MEXIRE_dashboard_image.png'),
                      fit: BoxFit.fitWidth,
                      opacity: 0.7,
                    ),
                  ),
                ),
                GridView.builder(
                  itemCount: 2,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 20,
                  ),
                  itemBuilder: (context, index) => miniBox(),
                ),
                SizedBox(height: 20),
                largeBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget miniBox() {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(21),
        color: Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? const Color(0xff26262B)
            : Color.fromARGB(255, 248, 246, 246),
      ),
    );
  }

  Widget largeBox() {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(21),
        color: Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? const Color(0xff26262B)
            : Color.fromARGB(255, 248, 246, 246),
      ),
    );
  }
}
