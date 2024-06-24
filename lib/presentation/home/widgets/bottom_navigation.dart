import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

import 'package:haki_hub/domain/value_objects/app_colors.dart';
import 'package:haki_hub/presentation/home/pages/home_page.dart';
import 'package:haki_hub/presentation/content/pages/updates_page.dart';
import 'package:haki_hub/presentation/content/pages/content_page.dart';
import 'package:haki_hub/presentation/helplines/pages/helpline_page.dart';

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
    ContentPage(),
    UpdatesPage(),
    HelplinePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: NavigationBarTheme(
        data: const NavigationBarThemeData(
          labelTextStyle: WidgetStatePropertyAll(
            TextStyle(
              color: AppColors.secondaryColor400,
              fontWeight: FontWeight.w700,
              fontSize: 12,
            ),
          ),
        ),
        child: NavigationBar(
          height: 70,
          surfaceTintColor: AppColors.secondaryColor400,
          indicatorColor: AppColors.secondaryColor400,
          selectedIndex: _selectedPageIndex,
          onDestinationSelected: _selectPage,
          animationDuration: const Duration(seconds: 2),
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          destinations: const [
            NavigationDestination(
              icon: Icon(
                FluentIcons.home_24_regular,
                color: AppColors.primaryColor400,
              ),
              selectedIcon: Icon(
                FluentIcons.home_24_filled,
                color: Colors.white,
              ),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(
                FluentIcons.learning_app_24_regular,
                color: AppColors.primaryColor400,
              ),
              selectedIcon: Icon(
                FluentIcons.learning_app_24_filled,
                color: Colors.white,
              ),
              label: 'Content',
            ),
            NavigationDestination(
              icon: Icon(
                FluentIcons.arrow_rotate_clockwise_24_regular,
                color: AppColors.primaryColor400,
              ),
              selectedIcon: Icon(
                FluentIcons.arrow_rotate_clockwise_24_filled,
                color: Colors.white,
              ),
              label: 'Updates',
            ),
            NavigationDestination(
              icon: Icon(
                FluentIcons.chat_bubbles_question_24_regular,
                color: AppColors.primaryColor400,
              ),
              selectedIcon: Icon(
                FluentIcons.chat_bubbles_question_24_filled,
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
