import 'package:flutter/material.dart';
import 'package:haki_hub/domain/models/content.dart';
import 'package:haki_hub/domain/models/helpline.dart';
import 'package:haki_hub/domain/value_objects/app_colors.dart';
import 'package:haki_hub/domain/value_objects/asset_strings.dart';
import 'package:haki_hub/domain/value_objects/enums.dart';
import 'package:haki_hub/domain/value_objects/strings.dart';
import 'package:haki_hub/presentation/home/widgets/carousel_card.dart';

final List<CarouselCard> carouselSliderItems = <CarouselCard>[
  const CarouselCard(
    chipTitle: recentUpdatesString,
    chipTitleColor: AppColors.secondaryColor400,
    chipColor: AppColors.secondaryColor100,
    postTime: '12 hrs ago',
    title: 'Voting of the Finance Bill 2024',
    subtitle: 'Track all the votes as they come  from parliament...',
  ),
  const CarouselCard(
    chipTitle: 'Join the Revolution',
    chipTitleColor: AppColors.tertiaryColor400,
    chipColor: AppColors.tertiaryColor100,
    postTime: '',
    title: 'Interested in contributing to the cause?',
    subtitle: 'Click to learn how you could help',
  ),
  const CarouselCard(
    chipTitle: 'Upcoming Protest',
    chipTitleColor: AppColors.primaryColor400,
    chipColor: AppColors.primaryColor100,
    postTime: '1 hr ago',
    title: 'Occupy Parliament II',
    subtitle: '24th June 2024   |   10:00 AM   |   KICC',
  )
];

// Define the content for each section using a Map
final Map<String, List<Map<String, dynamic>>> sections = {
  'Civic Education': [
    {
      'icon': Icons.credit_card,
      'title': financeBill2024String,
      'subtitle': financeBillCardDescription,
    },
    {
      'icon': Icons.security,
      'title': dataProtection2019String,
      'subtitle': dataProtectionActSubtitle,
    },
    {
      'icon': Icons.gavel,
      'title': picketingAndBoyCottingString,
      'subtitle': picketingAndBoyCottingSubtitle,
    },
  ],
  'Health and Safety': [
    {
      'icon': Icons.health_and_safety,
      'title': healthAndFirstAidString,
    },
    {
      'icon': Icons.warning,
      'title': teargasRecoveryString,
    },
    {
      'icon': Icons.healing,
      'title': injuryRecoveryString,
    },
    {
      'icon': Icons.phone,
      'title': medicalHelplinesString,
    },
    {
      'icon': Icons.healing,
      'title': mentalHealthSupportString,
    },
    {
      'icon': Icons.security,
      'title': protestSafetyString,
      'subtitle': protestSafetySubtitle,
    },
    {
      'icon': Icons.contact_phone,
      'title': emergencyContactSharingString,
      'subtitle': emergencyContactSubtitle,
    },
  ],
};

final List<Helpline> helplineData = <Helpline>[
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
  Helpline(
    category: HelplineCategory.Police,
    title: 'National Police Service',
    phone: '999',
    description: '',
  ),
];
final List<Content> contentData = <Content>[
  Content(
    thumbnail: posterOneTwoImage,
    title: 'Honoring the Legacy of Rex Kanyike Masai',
    subtitle:
        'In memory of Rex Kanyike Masai, who gave his life fighting for the freedom of Kenyans. #ForRex #RejectFinanceBill2024 #TotalShutdown',
    description:
        'We remember Rex Kanyike Masai, a brave freedom fighter who tragically lost his life in the recent protests for Kenyan freedom. '
        'His courage and dedication inspire us to continue the fight for justice and equality. Let us honor his memory and remain steadfast in our pursuit of freedom for all Kenyans. '
        '#ForRex #RejectFinanceBill2024 #TotalShutdown',
    timeStamp: '2024-06-20T09:00:00Z',
  ),
  Content(
    thumbnail: posterTwoImage,
    title: 'Day 3: Honoring Rex Kanyike Masai (RIP)',
    subtitle: 'Day 3: Honoring Rex Kanyike Masai (RIP)',
    description:
        'As we continue to demand justice and freedom, we honor the memory of Rex Kanyike Masai, who lost his life in the struggle. '
        'President Ruto must listen to our voices. Reject the Finance Bill 2024 without amendments. We stand united in total shutdown until all protestors are free. '
        '#ForRex #RejectFinanceBill2024 #FreeAllProtestors',
    timeStamp: '2024-06-20T12:00:00Z',
  ),
  Content(
    thumbnail: posterThreeImage,
    title: 'Blood Donation Appeal',
    subtitle: 'Blood Donation Appeal for victims of Finance Bill 2024 protests',
    description:
        'Let\'s paint the country red, and aim for zero mortality due to blood loss #MedicsForKenya #DonateBlood #SaveLives',
    timeStamp: '2024-06-20T13:00:00Z',
  ),
];
