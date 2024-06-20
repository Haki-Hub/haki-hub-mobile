import 'package:flutter/material.dart';
import 'package:haki_hub/presentation/shared/app_scaffold.dart';

class HealthSafety extends StatelessWidget {
  const HealthSafety({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      title: 'Health and Safety',
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}