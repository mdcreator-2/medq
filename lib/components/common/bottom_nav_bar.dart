import 'package:flutter/material.dart';
import '../home/nav_item.dart';

class AppBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final bool isDark;
  final Color primaryColor;
  final List<AppBottomNavBarItem> items;
  final ValueChanged<int> onItemTapped;

  const AppBottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.isDark,
    required this.primaryColor,
    required this.items,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isDark
            ? const Color(0xFF101D22).withValues(alpha: 0.95)
            : Colors.white.withValues(alpha: 0.9),
        border: Border(
          top: BorderSide(
            color: isDark ? Colors.grey[800]! : Colors.grey[200]!,
          ),
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: items.asMap().entries.map((entry) {
              final index = entry.key;
              final item = entry.value;
              return NavItem(
                icon: item.icon,
                label: item.label,
                isActive: selectedIndex == index,
                isDark: isDark,
                primaryColor: primaryColor,
                onTap: () => onItemTapped(index),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class AppBottomNavBarItem {
  final IconData icon;
  final String label;

  const AppBottomNavBarItem({required this.icon, required this.label});
}
