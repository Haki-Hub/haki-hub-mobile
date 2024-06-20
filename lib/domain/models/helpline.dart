import 'package:haki_hub/domain/value_objects/enums.dart';

class Helpline {
  final HelplineCategory category;
  final String title;
  final String phone;
  final String? description;

  Helpline({
    required this.category,
    required this.title,
    required this.phone,
    this.description,
  });
}
