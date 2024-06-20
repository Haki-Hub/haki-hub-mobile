import 'package:flutter/material.dart';
import 'package:haki_hub/domain/value_objects/app_colors.dart';
import 'package:haki_hub/domain/value_objects/spaces.dart';

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
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                    mediumVerticalSizedBox,
                    Text(
                      phone,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: AppColors.secondaryColor500,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.secondaryColor500,
                  ),
                  child: const Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        smallVerticalSizedBox,
        const Divider(
          color: AppColors.secondaryColor400,
        ),
      ],
    );
  }
}
