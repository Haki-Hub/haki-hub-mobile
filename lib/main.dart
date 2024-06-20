import 'package:flutter/material.dart';
import 'package:haki_hub/domain/value_objects/app_colors.dart';
import 'package:haki_hub/presentation/pages/home_page.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.secondaryColor,
        useMaterial3: false,
      ),
      home: const HomePage()));
}
