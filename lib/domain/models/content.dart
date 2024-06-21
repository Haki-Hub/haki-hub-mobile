class Content {
  final String thumbnail;
  final String title;
  final String? subtitle;
  final String? description;

  Content({
    required this.thumbnail,
    required this.title,
    this.subtitle,
    this.description,
  });
}
