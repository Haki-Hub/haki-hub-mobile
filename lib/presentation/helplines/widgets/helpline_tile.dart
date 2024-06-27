import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

import 'package:haki_hub/domain/value_objects/app_colors.dart';

class HelplineTile extends StatelessWidget {
  const HelplineTile({
    super.key,
    required this.title,
    required this.phone,
    this.onPressed,
  });

  final String title;
  final String phone;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onPressed,
          child: ListTile(
            title: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
            ),
            subtitle: Text(
              phone,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 14,
                color: AppColors.secondaryColor500,
              ),
            ),
            trailing: const Icon(
              FluentIcons.call_24_filled,
              color: AppColors.secondaryColor500,
            ),
            contentPadding: const EdgeInsets.all(5),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Divider(color: AppColors.secondaryColor400),
        ),
      ],
    );
  }
}