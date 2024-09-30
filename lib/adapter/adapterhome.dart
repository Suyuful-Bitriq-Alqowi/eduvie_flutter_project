import 'package:flutter/material.dart';

class AdapterHome extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String genre;

  const AdapterHome({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.genre,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          imageUrl,
          width: 160,
          height: 100,
          fit: BoxFit.cover,
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        Text(
          genre,
          style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w300,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
