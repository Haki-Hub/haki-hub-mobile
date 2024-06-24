import 'package:flutter/material.dart';
import 'package:haki_hub/domain/value_objects/spaces.dart';

class CarouselCard extends StatelessWidget {
  const CarouselCard({
    super.key,
    required this.chipTitle,
    required this.chipTitleColor,
    required this.chipColor,
    required this.postTime,
    required this.title,
    required this.subtitle,
  });

  final String chipTitle;
  final Color chipTitleColor;
  final Color chipColor;
  final String postTime;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: chipColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  chipTitle,
                  style: TextStyle(color: chipTitleColor, fontSize: 11),
                ),
              ),
              Text(
                postTime,
                style: const TextStyle(fontSize: 12),
              )
            ],
          ),
          size15VerticalSizedBox,
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            subtitle,
            style: const TextStyle(fontSize: 13),
          )
        ],
      ),
    );
  }
}
