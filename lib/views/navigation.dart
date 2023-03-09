import 'package:boxire_flutter/themes/theme_provider.dart';
import 'package:boxire_flutter/views/main_views/dashboard.dart';
import 'package:boxire_flutter/views/main_views/explore.dart';
import 'package:boxire_flutter/views/main_views/settings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;

  void navigate(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _pages = [
    const ExploreScreen(),
    const DashboardScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    var tabColor =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? const Color(0xff1A191F)
            : const Color(0xffF5F5F5);

    var selectedColor =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? const Color(0xffE1E1E1)
            : const Color(0xff5F5F5F);

    var unselectedColor =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
            ? const Color(0xff7F7F7F)
            : const Color(0xff959595);

    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: navigate,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: tabColor,
        selectedItemColor: selectedColor,
        unselectedItemColor: unselectedColor,
        iconSize: 30,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: "Dashboard",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
