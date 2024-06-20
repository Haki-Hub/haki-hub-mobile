import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({super.key, required this.body});

  final Widget body;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: const Text('Haki Hub'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: body,
        ));
  }
}
