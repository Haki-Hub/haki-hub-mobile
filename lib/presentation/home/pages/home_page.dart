import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:haki_hub/domain/value_objects/strings.dart';
import 'package:haki_hub/domain/value_objects/utils.dart';
import 'package:haki_hub/presentation/shared/app_scaffold.dart';
import 'package:haki_hub/presentation/shared/section_widget.dart';

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
            // Carousel Slider
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: CarouselSlider(
                options: CarouselOptions(height: 150.0),
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: const BoxDecoration(color: Colors.amber),
                          child: Text(
                            'Trending Thing $i',
                            style: const TextStyle(fontSize: 16.0),
                          ));
                    },
                  );
                }).toList(),
              ),
            ),
            ...sections.entries.map((entry) {
              return SectionWidget(
                title: entry.key,
                items: entry.value,
              );
            }),
          ],
        ),
      ),
    );
  }
}
