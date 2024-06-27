import 'package:flutter/material.dart';

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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
              const Spacer(),
              Text(
                postTime,
                style: const TextStyle(fontSize: 12),
              )
            ],
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 2),
          Text(
            subtitle,
            style: const TextStyle(fontSize: 13),
          )
        ],
      ),
    );
  }
}
