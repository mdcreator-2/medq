import "package:flutter/material.dart";
import 'components/questionbank/filter_chip_button.dart';
import 'components/questionbank/question_card.dart';

class QuestionBankContent extends StatelessWidget {
  const QuestionBankContent({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final primaryColor = const Color(0xFF11A4D4);
    final bgColor = isDark ? const Color(0xFF101D22) : const Color(0xFFF6F8F8);
    final surfaceLight = Colors.white;
    final surfaceDark = const Color(0xFF1A2C33);
    final surfaceColor = isDark ? surfaceDark : surfaceLight;
    final textColor = isDark ? Colors.white : const Color(0xFF0F172A);
    final secondaryTextColor = isDark ? Colors.white70 : Colors.black54;

    return Container(
      color: bgColor,
      child: SafeArea(
        bottom: false,
        child: Column(
          children: [
            // Custom App Bar (no nested Scaffold)
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 16, 8, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 48), // balance for centering
                  Text(
                    "Question Bank",
                    style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.account_circle_outlined, color: textColor),
                    onPressed: () {},
                  ),
                ],
              ),
            ),

            // Scrollable content
            Expanded(
              child: Stack(
                children: [
                  SingleChildScrollView(
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
                                prefixIcon: const Icon(
                                  Icons.search,
                                  color: Colors.grey,
                                ),
                                border: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                contentPadding: const EdgeInsets.symmetric(
                                  vertical: 15,
                                ),
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
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 100,
                        ), // Space for FAB + Bottom Nav
                      ],
                    ),
                  ),

                  // Floating Action Button
                  Positioned(
                    bottom: 16,
                    right: 16,
                    child: FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
