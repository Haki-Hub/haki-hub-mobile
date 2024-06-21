import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:haki_hub/domain/value_objects/asset_strings.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
    required this.body,
    required this.title,
  });

  final Widget body;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SvgPicture.asset(logoSvg),
        backgroundColor: Colors.white,
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: body,
    );
  }
}
