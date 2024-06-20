import 'package:flutter/material.dart';
import 'package:haki_hub/domain/models/helpline.dart';
import 'package:haki_hub/domain/value_objects/enums.dart';

// Define the content for each section using a Map
final Map<String, List<Map<String, dynamic>>> sections = {
  'Civic Education': [
    {
      'icon': Icons.credit_card,
      'title': 'Finance Bill 2024',
      'subtitle': 'Understanding the Finance Bill 2024',
    },
    {
      'icon': Icons.security,
      'title': 'Data Protection Act 2019',
      'subtitle':
          'Exploring the rights and duties of citizens in the Data Protection Act 2019',
    },
    {
      'icon': Icons.gavel,
      'title': 'Picketing and Boycotting Etiquette',
      'subtitle': 'The importance of law and order in society.',
    },
  ],
  'Health and Safety': [
    {
      'icon': Icons.health_and_safety,
      'title': 'Health and First Aid',
    },
    {
      'icon': Icons.warning,
      'title': 'Teargas Recovery',
    },
    {
      'icon': Icons.healing,
      'title': 'Injury Recovery',
    },
    {
      'icon': Icons.phone,
      'title': 'Medical Helplines',
    },
    {
      'icon': Icons.healing,
      'title': 'Mental Health Support',
    },
    {
      'icon': Icons.security,
      'title': 'Protest Safety Tips',
      'subtitle': 'Guidelines for staying safe during protests.',
    },
    {
      'icon': Icons.contact_phone,
      'title': 'Emergency Contact Sharing',
      'subtitle':
          'Allow users to share their emergency contact details with trusted individuals.',
    },
  ],
};

final List<Helpline> myCareHubHelplines = <Helpline>[
  // Ambulances
  Helpline(
    category: HelplineCategory.Ambulance,
    title: 'Ivory Ambulance',
    phone: '0726998880',
    description: '',
  ),
  Helpline(
    category: HelplineCategory.Ambulance,
    title: 'Nairobi East Hospital Ambulance',
    phone: '0111435797',
    description: '',
  ),
  Helpline(
    category: HelplineCategory.Ambulance,
    title: 'Eplus',
    phone: '0700395395',
    description: '',
  ),
  Helpline(
    category: HelplineCategory.Ambulance,
    title: 'A.A.R',
    phone: '0725225225',
    description: '',
  ),
  Helpline(
    category: HelplineCategory.Ambulance,
    title: 'St. John Ambulance',
    phone: '0721225285',
    description: '',
  ),
  Helpline(
    category: HelplineCategory.Ambulance,
    title: 'RFH',
    phone: '0741574782',
    description: '',
  ),
  Helpline(
    category: HelplineCategory.Ambulance,
    title: 'OCOA',
    phone: '0758692000',
    description: '',
  ),
  Helpline(
    category: HelplineCategory.Ambulance,
    title: 'Euraka',
    phone: '0712222547',
    description: '',
  ),
  Helpline(
    category: HelplineCategory.Ambulance,
    title: 'Moshi Ambulance',
    phone: '0792274997',
    description: '',
  ),
  Helpline(
    category: HelplineCategory.Ambulance,
    title: 'LifeMed',
    phone: '0708188085',
    description: '',
  ),
  Helpline(
    category: HelplineCategory.Ambulance,
    title: 'EOC',
    phone: '1508',
    description: '',
  ),
  Helpline(
    category: HelplineCategory.Ambulance,
    title: 'Eagle Rescue Ambulance',
    phone: '0727498805',
    description: '',
  ),
  Helpline(
    category: HelplineCategory.Ambulance,
    title: 'Arrow Ambulance',
    phone: '0723623880',
    description: '',
  ),
  Helpline(
    category: HelplineCategory.Ambulance,
    title: 'Nyanchwa Ambulance Kisii',
    phone: '0723623880',
    description: '',
  ),
  Helpline(
    category: HelplineCategory.Ambulance,
    title: 'Prodigy Ambulance',
    phone: '0713644686',
    description: '',
  ),
  Helpline(
    category: HelplineCategory.Ambulance,
    title: 'Lifeline Ambulance',
    phone: '0700024764',
    description: '',
  ),
  Helpline(
    category: HelplineCategory.Ambulance,
    title: 'VHS Ambulance',
    phone: '0702610657',
    description: '',
  ),
  Helpline(
    category: HelplineCategory.Ambulance,
    title: 'Red Cross',
    phone: '1199',
    description: '',
  ),
  Helpline(
    category: HelplineCategory.Ambulance,
    title: 'Neema Ambulance Kahawa Sukari',
    phone: '0759263586',
    description: '',
  ),
  Helpline(
    category: HelplineCategory.Ambulance,
    title: 'Mediheal Ambulance Parklands',
    phone: '0706000888',
    description: '',
  ),
  Helpline(
    category: HelplineCategory.Ambulance,
    title: 'Morningstar Ambulance',
    phone: '0758803688',
    description: '',
  ),
  Helpline(
    category: HelplineCategory.Ambulance,
    title: 'Ladnan Hospital',
    phone: '0707000730',
    description: '',
  ),
  Helpline(
    category: HelplineCategory.Ambulance,
    title: 'Nairobi Women\'s Kitengela',
    phone: '0717723677',
    description: '',
  ),
  Helpline(
    category: HelplineCategory.Ambulance,
    title: 'Kind David Hospital Ambulance',
    phone: '0798672797',
    description: '',
  ),
  Helpline(
    category: HelplineCategory.Ambulance,
    title: 'QuickSafe Ambulance Nairobi',
    phone: '0721853796',
    description: '',
  ),
  Helpline(
    category: HelplineCategory.Ambulance,
    title: 'Nairobi Women\'s Nakuru',
    phone: '0707957840',
    description: '',
  ),
  Helpline(
    category: HelplineCategory.Ambulance,
    title: 'First Responder',
    phone: '0792005351',
    description: '',
  ),
  Helpline(
    category: HelplineCategory.Ambulance,
    title: 'Radiant Hospital Ambulance',
    phone: '0725532000',
    description: '',
  ),
  Helpline(
    category: HelplineCategory.Ambulance,
    title: 'Rescuemed',
    phone: '0722805645',
    description: '',
  ),
  Helpline(
    category: HelplineCategory.Ambulance,
    title: 'NWH Ambulance Nakuru',
    phone: '0707957840',
    description: '',
  ),
  Helpline(
    category: HelplineCategory.Ambulance,
    title: 'Bahati Ambulance',
    phone: '0706334817',
    description: '',
  ),
  Helpline(
    category: HelplineCategory.Ambulance,
    title: 'Breesl Ambulance',
    phone: '0721491110',
    description: '',
  ),
  Helpline(
    category: HelplineCategory.Ambulance,
    title: 'St Mary\'s Hospital Langata Ambulance',
    phone: '0777663441',
    description: '',
  ),
  Helpline(
    category: HelplineCategory.Ambulance,
    title: 'Alpha Ambulance',
    phone: '0711475475',
    description: '',
  ),
  Helpline(
    category: HelplineCategory.Ambulance,
    title: 'SWIFT Paramedic',
    phone: '0722816148',
    description: '',
  ),
  Helpline(
    category: HelplineCategory.Ambulance,
    title: 'Emergency Medical Response',
    phone: '0728310310',
    description: '',
  ),
  Helpline(
    category: HelplineCategory.Ambulance,
    title: 'Delta Ambulance',
    phone: '0742860638',
    description: '',
  ),
  // Law
  Helpline(
    category: HelplineCategory.Law,
    title: 'Law Society of Kenya',
    phone: '0800720434',
    description: '',
  ),
  Helpline(
    category: HelplineCategory.Law,
    title: 'IMLU (Independent Medico Legal Unit)',
    phone: '0800721401',
    description: '',
  ),
  Helpline(
    category: HelplineCategory.Law,
    title: 'Defenders Coalition',
    phone: '0716200100',
    description: '',
  ),
  // Police
];