import 'package:flutter/material.dart';
import 'package:haki_hub/presentation/shared/app_scaffold.dart';

class Helpline extends StatelessWidget {
  const Helpline({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      title: 'Helplines',
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
