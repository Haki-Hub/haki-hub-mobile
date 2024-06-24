import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import 'package:haki_hub/domain/value_objects/app_colors.dart';

class ContentCard extends StatelessWidget {
  const ContentCard({
    super.key,
    required this.title,
    required this.imageName,
    required this.onTap,
  });

  final String title;
  final String imageName;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {

    return Card(
      clipBehavior: Clip.hardEdge,
      margin: const EdgeInsets.all(5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        onTap: onTap,
        child: Stack(
          children: [
            Hero(
              tag: imageName, 
              child: FadeInImage(
                placeholder: MemoryImage(kTransparentImage), 
                image: AssetImage(imageName),
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              )
            ),
            Positioned(
              bottom: 0, left: 0, right: 0,
              child: Container(
                padding: const EdgeInsets.all(8),
                color: Colors.black54,
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: AppColors.primaryColor100,
                  ),
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}