import 'package:flutter/material.dart';
import 'package:haki_hub/presentation/shared/custom_list_tile.dart';

class SectionWidget extends StatelessWidget {
  final String title;
  final List<Map<String, dynamic>> items;

  const SectionWidget({
    super.key,
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          ...items.map(
            (item) => CustomListTile(
              icon: item['icon'],
              title: item['title'],
              onTap: item['onTap'],
              subtitle: item['subtitle'],
            ),
          ),
        ],
      ),
    );
  }
}
