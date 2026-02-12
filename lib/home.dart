import 'package:flutter/material.dart';
import 'components/home/continue_reading_card.dart';
import 'components/home/daily_goal_card.dart';
import 'components/home/progress_card.dart';

class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final primaryColor = const Color(0xFF11A4D4);
    final surfaceColor = isDark ? const Color(0xFF1A2C33) : Colors.white;

    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          // Top App Bar
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Learning Hub',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: isDark ? Colors.white : Colors.black87,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.account_circle),
                  iconSize: 32,
                  color: isDark ? Colors.white : Colors.black87,
                ),
              ],
            ),
          ),

          // Scrollable Content
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Greeting & Streak Section
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Good Morning,',
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: isDark ? Colors.white : Colors.black87,
                                  height: 1.2,
                                ),
                              ),
                              Text(
                                'Dr. Arjun',
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: primaryColor,
                                  height: 1.2,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 16),
                        // Streak Badge
                        Container(
                          height: 40,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            color: surfaceColor,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: isDark
                                  ? Colors.grey[800]!
                                  : Colors.grey[200]!,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withValues(alpha: 0.05),
                                blurRadius: 4,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                Icons.local_fire_department,
                                size: 20,
                                color: Colors.orange,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                '7 Day Streak',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: isDark ? Colors.white : Colors.black87,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Hero Card: Continue Reading
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ContinueReadingCard(
                      isDark: isDark,
                      surfaceColor: surfaceColor,
                      primaryColor: primaryColor,
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Daily Goals Section
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Daily Goals',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: isDark ? Colors.white : Colors.black87,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'View all',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: primaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 8),

                  // Daily Goals Horizontal Scroll
                  SizedBox(
                    height: 160,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      children: [
                        DailyGoalCard(
                          isDark: isDark,
                          surfaceColor: surfaceColor,
                          icon: Icons.quiz,
                          iconColor: Colors.orange,
                          iconBgColor: isDark
                              ? Colors.orange.withValues(alpha: 0.2)
                              : Colors.orange[100]!,
                          subject: 'Neurology',
                          title: 'Daily Quiz',
                          subtitle: '10 Qs',
                          subtitleColor: Colors.orange,
                        ),
                        const SizedBox(width: 16),
                        DailyGoalCard(
                          isDark: isDark,
                          surfaceColor: surfaceColor,
                          icon: Icons.style,
                          iconColor: primaryColor,
                          iconBgColor: isDark
                              ? primaryColor.withValues(alpha: 0.2)
                              : Colors.blue[100]!,
                          subject: 'Revision',
                          title: '20 Flashcards',
                          subtitle: 'Pending',
                          subtitleColor: primaryColor,
                        ),
                        const SizedBox(width: 16),
                        DailyGoalCard(
                          isDark: isDark,
                          surfaceColor: surfaceColor,
                          icon: Icons.play_circle,
                          iconColor: Colors.purple,
                          iconBgColor: isDark
                              ? Colors.purple.withValues(alpha: 0.2)
                              : Colors.purple[100]!,
                          subject: 'Cardiology',
                          title: 'Cardiac Cycle',
                          subtitle: '15 mins',
                          subtitleColor: Colors.purple,
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Your Progress Section
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Your Progress',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: isDark ? Colors.white : Colors.black87,
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  // Progress Cards
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        ProgressCard(
                          isDark: isDark,
                          surfaceColor: surfaceColor,
                          icon: Icons.biotech,
                          iconColor: primaryColor,
                          iconBgColor: primaryColor.withValues(alpha: 0.1),
                          subject: 'Pathology',
                          progress: 0.45,
                          progressColor: primaryColor,
                        ),
                        const SizedBox(height: 16),
                        ProgressCard(
                          isDark: isDark,
                          surfaceColor: surfaceColor,
                          icon: Icons.accessibility_new,
                          iconColor: Colors.purple,
                          iconBgColor: Colors.purple.withValues(alpha: 0.1),
                          subject: 'Anatomy',
                          progress: 0.60,
                          progressColor: Colors.purple,
                        ),
                        const SizedBox(height: 16),
                        ProgressCard(
                          isDark: isDark,
                          surfaceColor: surfaceColor,
                          icon: Icons.science,
                          iconColor: Colors.teal,
                          iconBgColor: Colors.teal.withValues(alpha: 0.1),
                          subject: 'Biochemistry',
                          progress: 0.12,
                          progressColor: Colors.teal,
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 100),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
