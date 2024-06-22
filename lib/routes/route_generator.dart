import 'package:flutter/material.dart';
import 'package:haki_hub/domain/models/content.dart';
import 'package:haki_hub/presentation/content/pages/update_details_page.dart';
import 'package:haki_hub/presentation/helplines/pages/ambulance_helpline_page.dart';
import 'package:haki_hub/presentation/helplines/pages/law_helpline_page.dart';
import 'package:haki_hub/presentation/helplines/pages/police_helpline_page.dart';
import 'package:haki_hub/routes/routes.dart';

class GenerateRoute {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case AppRoutes.ambulanceHelplinePageRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => const AmbulanceHelplinePage(),
        );
      case AppRoutes.lawHelplinePageRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => const Law(),
        );
      case AppRoutes.policeHelplinePageRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => const Police(),
        );
      case AppRoutes.updateDetailsPage:
        final Content content = args as Content;

        return MaterialPageRoute(
          builder: (BuildContext context) => UpdateDetailsPage(
            content: content,
          ),
        );
    }
    return null;
  }
}
