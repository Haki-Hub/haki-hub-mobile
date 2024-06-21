import 'package:flutter/material.dart';
import 'package:haki_hub/domain/value_objects/asset_strings.dart';
import 'package:haki_hub/domain/value_objects/spaces.dart';
import 'package:haki_hub/domain/value_objects/strings.dart';
import 'package:haki_hub/presentation/shared/app_scaffold.dart';
import 'package:haki_hub/presentation/shared/info_card.dart';
import 'package:haki_hub/routes/routes.dart';

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
              InfoCard(
                  assetName: ambulanceSvg,
                  isSecondaryColor: true,
                  isFullLength: true,
                  hasBorder: true,
                  title: medicalEmergencyCardDescription,
                  description: medicalEmergencyCardDescription,
                  onTap: () => Navigator.of(context)
                      .pushNamed(AppRoutes.ambulanceHelplinePageRoute)),
              size15VerticalSizedBox,
              InfoCard(
                assetName: nine11Svg,
                isTertiaryColor: true,
                isFullLength: true,
                hasBorder: true,
                title: policeBrutalityString,
                description: policeBrutalityCardDescription,
                onTap: () => Navigator.of(context)
                    .pushNamed(AppRoutes.policeHelplinePageRoute),
              ),
              size15VerticalSizedBox,
              InfoCard(
                assetName: buildingSvg,
                isFullLength: true,
                hasBorder: true,
                title: lawyerAssistanceString,
                description: lawyerAssistanceCardDescription,
                onTap: () => Navigator.of(context)
                    .pushNamed(AppRoutes.lawHelplinePageRoute),
              ),
              size15VerticalSizedBox,
            ],
          ),
        ),
      ),
    );
  }
}
