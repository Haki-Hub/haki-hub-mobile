import 'package:flutter/material.dart';
import 'package:haki_hub/domain/models/content.dart';
import 'package:haki_hub/domain/value_objects/app_colors.dart';
import 'package:haki_hub/domain/value_objects/spaces.dart';
import 'package:haki_hub/domain/value_objects/strings.dart';
import 'package:haki_hub/presentation/shared/app_scaffold.dart';

class UpdateDetailsPage extends StatelessWidget {
  const UpdateDetailsPage({
    super.key,
    required this.content,
  });

  final Content content;

  @override
  Widget build(BuildContext context) {
    final Size mediaQuerySize = MediaQuery.sizeOf(context);

    return AppScaffold(
      title: updateDetailsString,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: mediaQuerySize.width * 0.6,
                  child: Image.asset(
                    content.thumbnail,
                    fit: BoxFit.fill,
                  ),
                ),
                smallVerticalSizedBox,
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        content.title,
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                      smallVerticalSizedBox,
                      Text(
                        content.description!,
                        style: const TextStyle(
                          fontSize: 14,
                          height: 1.4,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: mediaQuerySize.width * 0.45,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          AppColors.secondaryColor500,
                        ),
                      ),
                      icon: const Icon(
                        Icons.share,
                      ),
                      label: const Text(
                        shareString,
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: mediaQuerySize.width * 0.45,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          AppColors.secondaryColor500,
                        ),
                      ),
                      icon: const Icon(
                        Icons.download,
                      ),
                      label: const Text(
                        downloadString,
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
