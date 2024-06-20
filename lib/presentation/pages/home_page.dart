import 'package:flutter/material.dart';
import 'package:haki_hub/presentation/shared/app_scaffold.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      body: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.support_agent,
              size: 40,
            ),
            title: Text('data'),
          ),
        ],
      ),
    );
  }
}
