import 'package:flutter/material.dart';
import 'package:haki_hub/domain/models/content.dart';
import 'package:haki_hub/domain/value_objects/strings.dart';
import 'package:haki_hub/domain/value_objects/utils.dart';
import 'package:haki_hub/presentation/content/widget/content_card.dart';
import 'package:haki_hub/presentation/shared/app_scaffold.dart';
import 'package:haki_hub/routes/routes.dart';

class UpdatesPage extends StatelessWidget {
  const UpdatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Sort contents by createdAt (ascending)
    contentData.sort((a, b) => a.timeStamp!.compareTo(b.timeStamp!));

    return AppScaffold(
      title: protestUpdatesString,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            ...contentData.map(
              (Content content) => ContentCard(
                subtitle: content.subtitle!,
                imageName: content.thumbnail,
                onTap: () => Navigator.of(context).pushNamed(
                  AppRoutes.updateDetailsPage,
                  arguments: content,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
