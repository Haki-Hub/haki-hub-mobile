import 'package:flutter/material.dart';
import 'package:haki_hub/domain/value_objects/app_colors.dart';
import 'package:haki_hub/domain/value_objects/spaces.dart';
import 'package:haki_hub/domain/value_objects/strings.dart';
import 'package:haki_hub/presentation/helplines/widgets/card.dart';
import 'package:haki_hub/presentation/shared/app_scaffold.dart';

class Helpline extends StatelessWidget {
  const Helpline({super.key});

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
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.deepPurple,
                      ),
                    ),
                    smallVerticalSizedBox,
                    Text(
                      helplineDescriptionString,
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.2,
                        color: Colors.deepPurple[900],
                      ),
                    ),
                  ],
                ),
              ),
              mediumVerticalSizedBox,
              const Wrap(
                spacing: 12,
                runSpacing: 12,
                children: <Widget>[
                  EmergencyCard(
                    icon: Icons.local_hospital,
                    title: ambulancesString,
                    color: AppColors.secondaryColor400,
                  ),
                  EmergencyCard(
                    icon: Icons.gavel,
                    title: lawString,
                    color: AppColors.primaryColor400,
                  ),
                  EmergencyCard(
                    icon: Icons.local_police,
                    title: policeString,
                    color: AppColors.tertiaryColor400,
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
