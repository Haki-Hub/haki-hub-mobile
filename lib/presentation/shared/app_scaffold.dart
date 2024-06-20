import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
          leading: SvgPicture.asset('assets/icons/haki-white-bg.svg'),
          backgroundColor: Colors.white,
          title: Text(
            title,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: body);
  }
}
