import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:haki_hub/application/dummy_data.dart';
import 'package:haki_hub/domain/value_objects/utils.dart';
import 'package:haki_hub/domain/value_objects/spaces.dart';
import 'package:haki_hub/domain/value_objects/strings.dart';
import 'package:haki_hub/presentation/shared/info_card.dart';
import 'package:haki_hub/presentation/shared/app_scaffold.dart';
import 'package:haki_hub/presentation/shared/section_header.dart';
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
            // Header
            Stack(
              children: [
                Image.asset(
                  backgroundBannerImage,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                Positioned(
                  bottom: 0, left: 0, right: 0,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: CarouselSlider(
                      options: CarouselOptions(height: 125),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  const SectionHeader(title: civicEducationString),
                  size15VerticalSizedBox,
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: civicEducationData.length,
                    itemBuilder: (context, index) {
                      var item = civicEducationData[index];
                      return InfoCard(
                        icon: item['icon'],
                        isTertiaryColor: true,
                        title: item['title'],
                        description: item['description'],
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox( height: 25),

            // Resources Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  const SectionHeader(title: resourcesString),
                  size15VerticalSizedBox,
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: resourcesData.length,
                    itemBuilder: (context, index) {
                      var item = resourcesData[index];
                      return InfoCard(
                        icon: item['icon'],
                        isSecondaryColor: true,
                        title: item['title'],
                        description: item['description'],
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 26),

            // Helplines Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  const SectionHeader(title: helplinesString),
                  size15VerticalSizedBox,
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: helplinesData.length,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      var item = helplinesData[index];
                      bool hasTertiaryOrSecondary = item.containsKey('isTertiaryColor') || item.containsKey('isSecondaryColor');
                      bool isTertiary = hasTertiaryOrSecondary ? item['isTertiaryColor'] ?? false : false;
                      bool isSecondary = hasTertiaryOrSecondary ? item['isSecondaryColor'] ?? false : false;

                      return InfoCard(
                        hasBorder: true,
                        isFullLength: true,
                        isTertiaryColor: isTertiary,
                        isSecondaryColor: isSecondary,
                        icon: item['icon'],
                        title: item['title'],
                        description: item['description'],
                        onTap: () => Navigator.of(context).pushNamed(item['route']),
                      );
                    }
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
