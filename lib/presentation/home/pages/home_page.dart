import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:haki_hub/domain/value_objects/app_colors.dart';
import 'package:haki_hub/domain/value_objects/strings.dart';
import 'package:haki_hub/domain/value_objects/utils.dart';
import 'package:haki_hub/presentation/home/widgets/carousel_card.dart';
import 'package:haki_hub/presentation/shared/app_scaffold.dart';
import 'package:haki_hub/presentation/shared/info_card.dart';
import 'package:haki_hub/routes/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: appName,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(
                  'assets/images/banner-3.png',
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: CarouselSlider(
                      options: CarouselOptions(height: 100.0),
                      items: carouselSliderItems.map((CarouselCard card) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              decoration:
                                  const BoxDecoration(color: Colors.amber),
                              child: card,
                            );
                          },
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 26,
            ),
            // Civic Education Section
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: <Widget>[
                  // Header
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Civic Education',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'View All',
                        style: TextStyle(
                          fontSize: 20,
                          color: AppColors.secondaryColor500,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  // Card Items
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InfoCard(
                        icon: Icons.money,
                        isTertiaryColor: true,
                        title: 'Finance Bill 2024',
                        description: 'Learn about the new finance bill',
                      ),
                      InfoCard(
                        icon: Icons.lock,
                        isTertiaryColor: true,
                        title: 'Data Protection Act',
                        description: 'Learn about the 2019 data protection act',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InfoCard(
                        icon: Icons.accessibility,
                        isTertiaryColor: true,
                        title: 'Protesting Rights',
                        description: 'Learn about your constitutional right',
                      ),
                      InfoCard(
                        icon: Icons.language,
                        isTertiaryColor: true,
                        title: 'ICT Bill',
                        description: 'Learn about the ICT bill',
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            // Resources Section
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: <Widget>[
                  // Header
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Resources',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'View All',
                        style: TextStyle(
                          fontSize: 20,
                          color: AppColors.secondaryColor500,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  // Card Items
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InfoCard(
                        icon: Icons.health_and_safety,
                        isSecondaryColor: true,
                        title: 'First Aid',
                        description:
                            'Get help with tear gas exposure, injury and more',
                      ),
                      InfoCard(
                        icon: Icons.psychology,
                        isSecondaryColor: true,
                        title: 'Mental Health',
                        description:
                            'Get help with any distress including trauma, panic...',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InfoCard(
                        icon: Icons.group,
                        isSecondaryColor: true,
                        title: 'Communities',
                        description: 'Find communities around civic education',
                      ),
                      InfoCard(
                        icon: Icons.attach_file,
                        isSecondaryColor: true,
                        title: 'Downloads',
                        description: 'Get relevant documents, media...',
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: <Widget>[
                  // Header
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Resources',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'View All',
                        style: TextStyle(
                          fontSize: 20,
                          color: AppColors.secondaryColor500,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  InfoCard(
                    icon: Icons.sos,
                    isTertiaryColor: true,
                    isFullLength: true,
                    hasBorder: true,
                    title: 'Police Brutality',
                    description: 'Report any incidents of police cruelty here',
                    onTap: () => Navigator.of(context)
                        .pushNamed(AppRoutes.policeHelplinePageRoute),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  InfoCard(
                      icon: Icons.emergency,
                      isSecondaryColor: true,
                      isFullLength: true,
                      hasBorder: true,
                      title: 'Medical Emergency',
                      description:
                          'Report any incidents of police cruelty here',
                      onTap: () => Navigator.of(context)
                          .pushNamed(AppRoutes.ambulanceHelplinePageRoute)),
                  const SizedBox(
                    height: 14,
                  ),
                  InfoCard(
                    icon: Icons.gavel,
                    isFullLength: true,
                    hasBorder: true,
                    title: 'Lawyer Assistance',
                    description: 'Reach out to pro bono lawyers for help',
                    onTap: () => Navigator.of(context)
                        .pushNamed(AppRoutes.lawHelplinePageRoute),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
