import 'package:flutter/material.dart';
import 'package:haki_hub/presentation/Helplines/helpline.dart';
import 'package:haki_hub/presentation/content/content.dart';
import 'package:haki_hub/presentation/content/updates.dart';
import 'package:haki_hub/presentation/home/pages/home_page.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  // Home page, Content, Updates, Helplines
  final List<Widget> _pages = const [
    HomePage(),
    Content(),
    Updates(),
    Helpline(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: NavigationBarTheme(
        data: const NavigationBarThemeData(
          labelTextStyle: WidgetStatePropertyAll(
            TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.w700,
              fontSize: 12,
            ),
          ),
        ),
        child: NavigationBar(
          height: 70,
          surfaceTintColor: Colors.green,
          indicatorColor: Colors.green,
          selectedIndex: _selectedPageIndex,
          onDestinationSelected: _selectPage,
          animationDuration: const Duration(seconds: 2),
          labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
          destinations: const [
            NavigationDestination(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.black,
              ),
              selectedIcon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.article_outlined,
                color: Colors.black,
              ),
              selectedIcon: Icon(
                Icons.article,
                color: Colors.white,
              ),
              label: 'Content',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.update_outlined,
                color: Colors.black,
              ),
              selectedIcon: Icon(
                Icons.update,
                color: Colors.white,
              ),
              label: 'Updates',
            ),
            NavigationDestination(
              icon: Icon(
                Icons.help_outline,
                color: Colors.black,
              ),
              selectedIcon: Icon(
                Icons.help,
                color: Colors.white,
              ),
              label: 'Helplines',
            ),
          ],
        ),
      ),
    );
  }
}
