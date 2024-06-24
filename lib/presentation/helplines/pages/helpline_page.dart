import 'package:flutter/material.dart';

import 'package:haki_hub/application/dummy_data.dart';
import 'package:haki_hub/domain/value_objects/spaces.dart';
import 'package:haki_hub/domain/value_objects/strings.dart';
import 'package:haki_hub/presentation/shared/info_card.dart';
import 'package:haki_hub/presentation/shared/app_scaffold.dart';

class HelplinePage extends StatelessWidget {
  const HelplinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: helplinesString,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurple[100]!.withOpacity(.4),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: double.infinity,
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      needAssistanceString,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Colors.deepPurple,
                      ),
                    ),
                    smallVerticalSizedBox,
                    Text(
                      helplineDescriptionString,
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.3,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
              ),
              mediumVerticalSizedBox,
              ListView.builder(
                shrinkWrap: true,
                itemCount: helplinesData.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  var item = helplinesData[index];
                  bool hasTertiaryOrSecondary = item.containsKey('isTertiaryColor') || item.containsKey('isSecondaryColor');
                  bool isTertiary = hasTertiaryOrSecondary ? item['isTertiaryColor'] ?? false : false;
                  bool isSecondary = hasTertiaryOrSecondary ? item['isSecondaryColor'] ?? false : false;

                  return InfoCard(
                    hasBorder: true,
                    isFullLength: true,
                    isTertiaryColor: isTertiary,
                    isSecondaryColor: isSecondary,
                    icon: item['icon'],
                    title: item['title'],
                    description: item['description'],
                    onTap: () => Navigator.of(context).pushNamed(item['route']),
                  );
                }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
