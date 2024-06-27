import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

import 'package:haki_hub/domain/models/content.dart';
import 'package:haki_hub/domain/value_objects/spaces.dart';
import 'package:haki_hub/domain/value_objects/strings.dart';
import 'package:haki_hub/domain/value_objects/app_colors.dart';
import 'package:haki_hub/presentation/shared/app_scaffold.dart';

class UpdateDetailsPage extends StatelessWidget {
  const UpdateDetailsPage({ super.key, required this.content });

  final Content content;

  @override
  Widget build(BuildContext context) {
    final Size mediaQuerySize = MediaQuery.sizeOf(context);

    return AppScaffold(
      title: content.title,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Hero(
                  tag: content.thumbnail, 
                  child: FadeInImage(
                    placeholder: MemoryImage(kTransparentImage), 
                    image: AssetImage(content.thumbnail),
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  )
                ),
                smallVerticalSizedBox,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    content.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                smallVerticalSizedBox,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    content.description!,
                    style: const TextStyle(fontSize: 14, height: 1.4),
                    textAlign: TextAlign.justify
                  ),
                ),
              ],
            ),
          ),
          
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
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
                        FluentIcons.share_android_24_filled, color: Colors.white,
                      ),
                      label: const Text(
                        shareString,
                        style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.white
                        ),
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
                        FluentIcons.arrow_download_24_filled, color: Colors.white,
                      ),
                      label: const Text(
                        downloadString,
                        style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.white
                        ),
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
