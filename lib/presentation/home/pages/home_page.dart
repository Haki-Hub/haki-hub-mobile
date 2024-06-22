import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:haki_hub/routes/routes.dart';
import 'package:haki_hub/domain/value_objects/utils.dart';
import 'package:haki_hub/domain/value_objects/spaces.dart';
import 'package:haki_hub/domain/value_objects/strings.dart';
import 'package:haki_hub/presentation/shared/info_card.dart';
import 'package:haki_hub/domain/value_objects/app_colors.dart';
import 'package:haki_hub/presentation/shared/app_scaffold.dart';
import 'package:haki_hub/domain/value_objects/asset_strings.dart';
import 'package:haki_hub/presentation/home/widgets/carousel_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: appName,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  backgroundBannerImage,
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
                      options: CarouselOptions(height: 115.0),
                      items: carouselSliderItems.map((CarouselCard card) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: const EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: const BoxDecoration(color: Colors.amber),
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
            const SizedBox(height: 26),
            // Civic Education Section
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: <Widget>[
                  // Header
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        civicEducationString,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        viewAllString,
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.secondaryColor500,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 14),
                  // Card Items
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InfoCard(
                        icon: Icons.money,
                        isTertiaryColor: true,
                        title: financeBill2024String,
                        description: financeBillCardDescription,
                      ),
                      InfoCard(
                        icon: Icons.lock,
                        isTertiaryColor: true,
                        title: dataProtectionActString,
                        description: dataProtectionCardDescription,
                      ),
                    ],
                  ),
                  SizedBox(height: 14),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InfoCard(
                        icon: Icons.accessibility,
                        isTertiaryColor: true,
                        title: protestingRightsString,
                        description: protestingRightsCardDescription,
                      ),
                      InfoCard(
                        icon: Icons.language,
                        isTertiaryColor: true,
                        title: ictBillString,
                        description: ictBillCardDescription,
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  // Header
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        resourcesString,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        viewAllString,
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.secondaryColor500,
                        ),
                      )
                    ],
                  ),
                  size15VerticalSizedBox,
                  // Card Items
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InfoCard(
                        icon: Icons.health_and_safety,
                        isSecondaryColor: true,
                        title: firstAidCardDescription,
                        description: firstAidCardDescription,
                      ),
                      InfoCard(
                        icon: Icons.psychology,
                        isSecondaryColor: true,
                        title: mentalHealthString,
                        description: mentalHealthCardDescription,
                      ),
                    ],
                  ),
                  size15VerticalSizedBox,
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InfoCard(
                        icon: Icons.group,
                        isSecondaryColor: true,
                        title: communitiesString,
                        description: communitiesCardDescription,
                      ),
                      InfoCard(
                        icon: Icons.attach_file,
                        isSecondaryColor: true,
                        title: downloadsString,
                        description: downloadsCardDescription,
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
                children: [
                  // Header
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        resourcesString,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        viewAllString,
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.secondaryColor500,
                        ),
                      )
                    ],
                  ),
                  size15VerticalSizedBox,
                  InfoCard(
                    assetName: nine11Svg,
                    isTertiaryColor: true,
                    isFullLength: true,
                    hasBorder: true,
                    title: policeBrutalityTitleString,
                    description: policeBrutalityCardDescription,
                    onTap: () => Navigator.of(context).pushNamed(
                      AppRoutes.policeHelplinePageRoute
                    ),
                  ),
                  size15VerticalSizedBox,
                  InfoCard(
                    assetName: ambulanceSvg,
                    isSecondaryColor: true,
                    isFullLength: true,
                    hasBorder: true,
                    title: medicalEmergencyString,
                    description: medicalEmergencyCardDescription,
                    onTap: () => Navigator.of(context).pushNamed(
                      AppRoutes.ambulanceHelplinePageRoute
                    )
                  ),
                  size15VerticalSizedBox,
                  InfoCard(
                    assetName: buildingSvg,
                    isFullLength: true,
                    hasBorder: true,
                    title: lawyerAssistanceString,
                    description: lawyerAssistanceCardDescription,
                    onTap: () => Navigator.of(context).pushNamed(
                      AppRoutes.lawHelplinePageRoute
                    ),
                  ),
                  size15VerticalSizedBox,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
