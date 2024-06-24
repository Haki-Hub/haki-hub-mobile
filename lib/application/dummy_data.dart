import 'package:haki_hub/routes/routes.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

List<Map<String, dynamic>> civicEducationData = [
  {
    'title': 'Finance Bill 2024',
    'description': 'Learn about the new finance bill.',
    'icon': FluentIcons.book_coins_24_regular,
  },
  {
    'title': 'Data Protection Act',
    'description': 'Learn about the 2019 data protection act',
    'icon': FluentIcons.shield_lock_24_regular,
  },
  {
    'title': 'Protesting Rights',
    'description': 'Learn about your constitutional right.',
    'icon': FluentIcons.people_community_24_regular,
  },
  {
    'title': 'ICT Bill',
    'description': 'Learn about the ICT bill',
    'icon': FluentIcons.book_open_globe_24_regular,
  },
];

List<Map<String, dynamic>> resourcesData = [
  {
    'title': 'First Aid',
    'description': 'Get help with tear gas exposure, injury and more.',
    'icon': FluentIcons.doctor_24_regular,
  },
  {
    'title': 'Mental Health Support',
    'description': 'Get help with any distress including trauma, panic...',
    'icon': FluentIcons.heart_pulse_24_regular,
  },
  {
    'title': 'Communities',
    'description': 'Find communities around civic education.',
    'icon': FluentIcons.building_people_24_regular,
  },
  {
    'title': 'Downloads',
    'description': 'Get relevant documents, media...',
    'icon': FluentIcons.attach_24_regular,
  },
];

List<Map<String, dynamic>> helplinesData = [
  {
    'title': 'Police Brutality Helplines',
    'description': 'Report incidents of police brutality.',
    'icon': FluentIcons.person_running_20_regular,
    'isTertiaryColor': true,
    'route': AppRoutes.policeHelplinePageRoute
  },
  {
    'title': 'Medic Helplines',
    'description': 'Request assistance from ambulance services.',
    'icon': FluentIcons.briefcase_medical_24_regular,
    'isSecondaryColor': true,
    'route': AppRoutes.ambulanceHelplinePageRoute
  },
  {
    'title': 'Legal Aid Helplines',
    'description': 'Connect with pro bono legal assistance.',
    'icon': FluentIcons.gavel_24_regular,
    'route': AppRoutes.lawHelplinePageRoute
  },
];