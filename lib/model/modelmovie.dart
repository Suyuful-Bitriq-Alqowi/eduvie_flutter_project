class Movie {
  final String title;
  final String? studio;
  final String? rating;
  final String? genre;
  final String imageUrl;

  Movie({
    required this.title,
    this.studio,
    this.rating,
    this.genre,
    required this.imageUrl,
  });
}
