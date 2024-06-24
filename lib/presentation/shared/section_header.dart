import 'package:flutter/material.dart';
import 'package:haki_hub/domain/value_objects/app_colors.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final String actionText;
  final VoidCallback? onActionTap;
  final Color? titleColor;
  final Color? actionTextColor;

  const SectionHeader({
    super.key,
    required this.title,
    this.actionText = 'View All',
    this.onActionTap,
    this.titleColor,
    this.actionTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          GestureDetector(
            onTap: onActionTap,
            child: Text(
              actionText,
              style: const TextStyle(
                fontSize: 14,
                color: AppColors.secondaryColor500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
