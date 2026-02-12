import 'package:flutter/material.dart';
import 'tag_badge.dart';

class FeaturedCard extends StatelessWidget {
  final bool isDark;
  final Color surfaceLight;
  final Color surfaceDark;
  final Color primaryColor;

  const FeaturedCard({
    super.key,
    required this.isDark,
    this.surfaceLight = Colors.white,
    this.surfaceDark = const Color(0xFF1A2C33),
    required this.primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: isDark ? surfaceDark : surfaceLight,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(16),
                ),
                child: Image.network(
                  'https://lh3.googleusercontent.com/aida-public/AB6AXuBfUZZtV0gUsRFH3qGQhLfXy0RbZw4OuBbhJew6UaOoj2VHXg6NnZOpzQrz87hno1lLAPSdkEmbnhpdmFmiYCTJxeor3lo7lii9cajmkWcUsEUyB5uZzERMFyXNdvE2Gjvh4x9YOIYl4bsoFyHahF9xmfCww5i4xCQd40bipRgITMW53OuAr0B8HZoew-y2zPVBX0k1pAq2XrrVshuCWnSObkdc5X4kCWo1cXpdpKP_WSw1uCuYIceBq-CXSnJ33dgHumTMg-fa7RiS',
                  height: 160,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(16),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withValues(alpha: 0.1),
                        Colors.black.withValues(alpha: 0.8),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 12,
                right: 12,
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.2),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.bookmark_border,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
              Positioned(
                bottom: 12,
                left: 16,
                right: 16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        TagBadge(
                          label: "HIGH YIELD",
                          color: Colors.amber.shade600,
                        ),
                        const SizedBox(width: 8),
                        TagBadge(
                          label: "SHORT ANSWER",
                          color: Colors.white.withValues(alpha: 0.2),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      "Pharmacokinetics & Dynamics",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Explain the four phases of pharmacokinetics (ADME) and how they influence drug dosing regimens in patients with renal failure.",
                  style: TextStyle(
                    color: isDark ? Colors.white70 : Colors.black54,
                    fontSize: 14,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    const Icon(
                      Icons.calendar_today_outlined,
                      size: 14,
                      color: Colors.grey,
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      "Mar 22",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Icon(
                      Icons.trending_up,
                      size: 14,
                      color: Colors.amber.shade600,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      "High Freq",
                      style: TextStyle(
                        color: Colors.amber.shade600,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: primaryColor.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "Start",
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
