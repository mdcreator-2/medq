import "package:flutter/material.dart";
import 'components/common/bottom_nav_bar.dart';
import 'components/questionbank/filter_chip_button.dart';
import 'components/questionbank/featured_card.dart';
import 'components/questionbank/question_card.dart';
import 'components/questionbank/progress_question_card.dart';

class QuestionBank extends StatefulWidget {
  const QuestionBank({super.key});

  @override
  State<QuestionBank> createState() => _QuestionBankState();
}

class _QuestionBankState extends State<QuestionBank> {
  final Color primaryColor = const Color(0xFF11A4D4);
  final Color backgroundLight = const Color(0xFFF6F8F8);
  final Color backgroundDark = const Color(0xFF101D22);
  final Color surfaceLight = Colors.white;
  final Color surfaceDark = const Color(0xFF1A2C33);

  int _selectedIndex = 1; // "Questions" is selected
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    Color bgColor = isDark ? backgroundDark : backgroundLight;
    Color surfaceColor = isDark ? surfaceDark : surfaceLight;
    Color textColor = isDark ? Colors.white : const Color(0xFF0F172A);
    Color secondaryTextColor = isDark ? Colors.white70 : Colors.black54;

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor.withValues(alpha: 0.95),
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: textColor),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          "Question Bank",
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle_outlined, color: textColor),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Search Bar
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: surfaceColor,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.05),
                      blurRadius: 10,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search topics, e.g., Anatomy...",
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                    prefixIcon: const Icon(Icons.search, color: Colors.grey),
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(vertical: 15),
                  ),
                ),
              ),
            ),

            // Filter Chips
            SizedBox(
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                children: [
                  FilterChipButton(
                    label: "All",
                    isSelected: true,
                    primaryColor: primaryColor,
                    isDark: isDark,
                    surfaceDarkColor: surfaceDark,
                  ),
                  FilterChipButton(
                    label: "High Yield",
                    isSelected: false,
                    primaryColor: primaryColor,
                    isDark: isDark,
                    surfaceDarkColor: surfaceDark,
                  ),
                  FilterChipButton(
                    label: "MCQ",
                    isSelected: false,
                    primaryColor: primaryColor,
                    isDark: isDark,
                    surfaceDarkColor: surfaceDark,
                  ),
                  FilterChipButton(
                    label: "Essay",
                    isSelected: false,
                    primaryColor: primaryColor,
                    isDark: isDark,
                    surfaceDarkColor: surfaceDark,
                  ),
                  FilterChipButton(
                    label: "Short Answer",
                    isSelected: false,
                    primaryColor: primaryColor,
                    isDark: isDark,
                    surfaceDarkColor: surfaceDark,
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  // Featured Card
                  FeaturedCard(
                    isDark: isDark,
                    primaryColor: primaryColor,
                    surfaceLight: surfaceLight,
                    surfaceDark: surfaceDark,
                  ),
                  const SizedBox(height: 16),

                  // List Item Card 1
                  QuestionCard(
                    isDark: isDark,
                    category: "Anatomy • Upper Limb",
                    title: "Brachial Plexus Lesions",
                    description:
                        "Identify the clinical presentation of Erb-Duchenne palsy versus Klumpke's palsy based on the nerve roots involved.",
                    type: "MCQ",
                    typeIcon: Icons.checklist,
                    status: "Completed",
                    statusColor: Colors.green,
                    footerText: "Last practiced 2d ago",
                    categoryColor: primaryColor,
                    surfaceLight: surfaceLight,
                    surfaceDark: surfaceDark,
                  ),
                  const SizedBox(height: 16),

                  // List Item Card 2
                  QuestionCard(
                    isDark: isDark,
                    category: "Pathology • CVS",
                    title: "Myocardial Infarction Complications",
                    description:
                        "Describe the timeline of gross and microscopic changes in the heart post-MI and associated complications.",
                    type: "Essay",
                    typeIcon: Icons.edit_note,
                    status: "15 min",
                    statusColor: secondaryTextColor,
                    footerText: "Not Started",
                    footerIcon: Icons.circle,
                    footerIconColor: Colors.grey.shade400,
                    categoryColor: Colors.purple,
                    surfaceLight: surfaceLight,
                    surfaceDark: surfaceDark,
                  ),
                  const SizedBox(height: 16),

                  // List Item Card 3
                  ProgressQuestionCard(
                    isDark: isDark,
                    category: "Physiology • Renal",
                    title: "Glomerular Filtration Rate",
                    description:
                        "Calculate GFR using creatinine clearance and understand factors affecting filtration pressure.",
                    type: "MCQ",
                    progress: 0.66,
                    categoryColor: Colors.pink,
                    primaryColor: primaryColor,
                    surfaceLight: surfaceLight,
                    surfaceDark: surfaceDark,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 100), // Height for Bottom Nav
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: const Icon(Icons.add, color: Colors.white, size: 28),
      ),
      bottomNavigationBar: AppBottomNavBar(
        selectedIndex: _selectedIndex,
        isDark: isDark,
        primaryColor: primaryColor,
        items: const [
          AppBottomNavBarItem(icon: Icons.home_outlined, label: 'Home'),
          AppBottomNavBarItem(icon: Icons.list_alt, label: 'Questions'),
          AppBottomNavBarItem(icon: Icons.bar_chart, label: 'Progress'),
          AppBottomNavBarItem(icon: Icons.person_outline, label: 'Profile'),
        ],
        onItemTapped: (index) => setState(() => _selectedIndex = index),
      ),
    );
  }
}
