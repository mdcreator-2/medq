import 'package:flutter/material.dart';
import 'components/common/bottom_nav_bar.dart';
import 'home.dart';
import 'qb.dart';
import 'tests_page.dart';
import 'profile_page.dart';

class AppShell extends StatefulWidget {
  const AppShell({super.key});

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    HomePageContent(),
    QuestionBankContent(),
    TestsPageContent(),
    ProfilePageContent(),
  ];

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final primaryColor = const Color(0xFF11A4D4);

    return Scaffold(
      body: IndexedStack(index: _selectedIndex, children: _pages),
      bottomNavigationBar: AppBottomNavBar(
        selectedIndex: _selectedIndex,
        isDark: isDark,
        primaryColor: primaryColor,
        items: const [
          AppBottomNavBarItem(icon: Icons.home, label: 'Home'),
          AppBottomNavBarItem(
            icon: Icons.question_mark,
            label: 'Question Bank',
          ),
          AppBottomNavBarItem(icon: Icons.assignment, label: 'Tests'),
          AppBottomNavBarItem(icon: Icons.person, label: 'Profile'),
        ],
        onItemTapped: (index) => setState(() => _selectedIndex = index),
      ),
    );
  }
}
