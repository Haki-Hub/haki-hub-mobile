import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:haki_hub/domain/value_objects/asset_strings.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
    required this.title,
    required this.body,
    this.floatingActionButton,
  });

  final String title;
  final Widget body;
  final Widget? floatingActionButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: SvgPicture.asset(
            logoSvg, height: 100, width: 100,
          ),
        ),
        backgroundColor: Colors.white,
        title: Text(
          title,
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: body,
      floatingActionButton: floatingActionButton,
    );
  }
}
