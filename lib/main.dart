import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:haki_hub/routes/route_generator.dart';
import 'package:haki_hub/domain/value_objects/app_colors.dart';
import 'package:haki_hub/presentation/home/widgets/bottom_navigation.dart';

void main() { runApp(const HakiHub()); }

class HakiHub extends StatelessWidget {
  const HakiHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.primaryColor400,
        useMaterial3: true,
        textTheme: GoogleFonts.dmSansTextTheme()
      ),
      home: const BottomNavigation(),
      onGenerateRoute: GenerateRoute.onGenerateRoute,
    );
  }
}
