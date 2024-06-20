import 'package:flutter/material.dart';
import 'package:haki_hub/domain/value_objects/spaces.dart';

class EmergencyCard extends StatelessWidget {
  const EmergencyCard({
    super.key,
    required this.icon,
    required this.title,
    required this.color,
    this.onPressed,
  });

  final IconData icon;
  final String title;
  final Color color;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);

    return InkWell(
      onTap: onPressed,
      child: Container(
        width: size.width * 0.43,
        decoration: BoxDecoration(
          color: color.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              Icon(
                icon,
                size: size.width * 0.15,
                color: Colors.white,
              ),
              smallVerticalSizedBox,
              Text(
                title,
                style: TextStyle(
                  color: color,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
