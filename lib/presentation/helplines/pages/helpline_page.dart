import 'package:flutter/material.dart';
import 'package:haki_hub/domain/value_objects/spaces.dart';
import 'package:haki_hub/domain/value_objects/strings.dart';
import 'package:haki_hub/presentation/helplines/widgets/card.dart';
import 'package:haki_hub/presentation/shared/app_scaffold.dart';
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
                  color: Colors.deepPurple[100],
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
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.deepPurple,
                      ),
                    ),
                    smallVerticalSizedBox,
                    const Text(
                      helplineDescriptionString,
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.2,
                      ),
                    ),
                  ],
                ),
              ),
              mediumVerticalSizedBox,
              Wrap(
                spacing: 12,
                runSpacing: 12,
                children: [
                  EmergencyCard(
                    icon: Icons.local_hospital,
                    title: ambulancesString,
                    color: Colors.green[900]!,
                    onPressed: () => Navigator.of(context)
                        .pushNamed(AppRoutes.ambulanceHelplinePageRoute),
                  ),
                  EmergencyCard(
                    icon: Icons.gavel,
                    title: lawString,
                    color: Colors.grey[900]!,
                    onPressed: () => Navigator.of(context)
                        .pushNamed(AppRoutes.lawHelplinePageRoute),
                  ),
                  EmergencyCard(
                    icon: Icons.local_police,
                    title: policeString,
                    color: Colors.blue[900]!,
                    onPressed: () => Navigator.of(context)
                        .pushNamed(AppRoutes.policeHelplinePageRoute),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
