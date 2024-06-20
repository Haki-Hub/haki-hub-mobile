import 'package:flutter/material.dart';
import 'package:haki_hub/domain/value_objects/app_colors.dart';

class IconAvatar extends StatelessWidget {
  const IconAvatar({
    super.key,
    required this.icon,
    this.isSecondaryColor = false,
    this.isTertiaryColor = false,
  });

  final bool isTertiaryColor;
  final bool isSecondaryColor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    Color mainColor = AppColors.primaryColor400;
    Color highlightColor = AppColors.primaryColor200;

    if (isSecondaryColor) {
      mainColor = AppColors.secondaryColor400;
      highlightColor = AppColors.secondaryColor200;
    } else if (isTertiaryColor) {
      mainColor = AppColors.tertiaryColor400;
      highlightColor = AppColors.tertiaryColor200;
    }

    return CircleAvatar(
      radius: 26,
      backgroundColor: highlightColor,
      child: Icon(
        icon,
        size: 30,
        color: mainColor,
      ),
    );
  }
}
