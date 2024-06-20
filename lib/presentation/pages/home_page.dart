import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('Haki Hub'),
      ),
      body: const Column(
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
