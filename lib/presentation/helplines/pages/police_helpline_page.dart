import 'package:flutter/material.dart';
import 'package:haki_hub/domain/value_objects/strings.dart';
import 'package:haki_hub/presentation/shared/app_scaffold.dart';

class Police extends StatelessWidget {
  const Police({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: policeHelplinesString,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [Container()],
          ),
        ),
      ),
    );
  }
}
