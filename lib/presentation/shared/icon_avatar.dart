import 'package:flutter/material.dart';
import 'package:haki_hub/domain/value_objects/app_colors.dart';

class IconAvatar extends StatelessWidget {
  const IconAvatar({
    super.key,
    this.isSecondaryColor = false,
    this.isTertiaryColor = false,
    this.widget,
  });

  final bool isTertiaryColor;
  final bool isSecondaryColor;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    Color highlightColor = AppColors.primaryColor200;

    if (isSecondaryColor) {
      highlightColor = AppColors.secondaryColor200;
    } else if (isTertiaryColor) {
      highlightColor = AppColors.tertiaryColor200;
    }

    return CircleAvatar(
      radius: 26,
      backgroundColor: highlightColor,
      child: widget,
    );
  }
}
