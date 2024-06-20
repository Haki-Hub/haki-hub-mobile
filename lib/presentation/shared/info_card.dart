import 'package:flutter/material.dart';
import 'package:haki_hub/domain/value_objects/app_colors.dart';
import 'package:haki_hub/presentation/shared/icon_avatar.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    this.isSecondaryColor = false,
    this.isTertiaryColor = false,
    this.isFullLength = false,
    this.hasBorder = false,
    this.onTap,
  });

  final IconData icon;
  final String title;
  final String description;
  final bool isSecondaryColor;
  final bool isTertiaryColor;
  final bool isFullLength;
  final bool hasBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = AppColors.primaryColor100;
    Color borderColor = Colors.transparent;

    if (isSecondaryColor) {
      backgroundColor = AppColors.secondaryColor100;
      borderColor = AppColors.secondaryColor400;
    } else if (isTertiaryColor) {
      backgroundColor = AppColors.tertiaryColor100;
      borderColor = AppColors.tertiaryColor400;
    } else {
      borderColor = AppColors.primaryColor400;
    }

    return InkWell(
      onTap: onTap,
      child: Container(
        width: isFullLength
            ? MediaQuery.sizeOf(context).width - 20
            : (MediaQuery.sizeOf(context).width / 2.2),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          color: hasBorder ? Colors.transparent : backgroundColor,
          borderRadius: BorderRadius.circular(10),
          border: hasBorder ? Border.all(color: borderColor, width: 1) : null,
        ),
        child: isFullLength
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  IconAvatar(
                    icon: icon,
                    isSecondaryColor: isSecondaryColor,
                    isTertiaryColor: isTertiaryColor,
                  ),
                  const SizedBox(
                    width: 14,
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          title,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          description,
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  IconAvatar(
                    icon: icon,
                    isSecondaryColor: isSecondaryColor,
                    isTertiaryColor: isTertiaryColor,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
