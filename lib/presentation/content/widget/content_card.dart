import 'package:flutter/material.dart';
import 'package:haki_hub/domain/value_objects/app_colors.dart';
import 'package:haki_hub/domain/value_objects/spaces.dart';
import 'package:haki_hub/domain/value_objects/strings.dart';

class ContentCard extends StatelessWidget {
  const ContentCard({
    super.key,
    required this.subtitle,
    required this.imageName,
    required this.onTap,
  });

  final String subtitle;
  final String imageName;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final Size mediaQuerySize = MediaQuery.sizeOf(context);

    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            width: double.infinity,
            height: mediaQuerySize.width * 0.4,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              border: Border.all(color: AppColors.secondaryColor500),
            ),
            child: Row(
              children: [
                SizedBox(
                  width:
                      mediaQuerySize.width * 0.4, // Image takes half of the card's width
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                    child: Image.asset(
                      imageName,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          subtitle,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: AppColors.primaryColor500,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 5,
                        ),
                        smallVerticalSizedBox,
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              readMoreString,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: AppColors.secondaryColor500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        size15VerticalSizedBox,
      ],
    );
  }
}
