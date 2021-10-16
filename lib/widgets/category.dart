import 'package:flutter/material.dart';
import 'package:flutter_game_store_app/widgets/newest_game_card.dart';
import 'package:flutter_game_store_app/widgets/popular_game_card.dart';

class Category extends StatelessWidget {
  Category({Key? key}) : super(key: key);
  final list = [
    {
      'icon': Icons.track_changes_outlined,
      'color': const Color(0xFF605CF4),
      'title': 'Arcade'
    },
    {
      'icon': Icons.sports_motorsports_outlined,
      'color': const Color(0xFFFC77A6),
      'title': 'Racing'
    },
    {
      'icon': Icons.casino_outlined,
      'color': const Color(0xFF4391FF),
      'title': 'Strategy'
    },
    {
      'icon': Icons.sports_esports,
      'color': const Color(0xFF7182F2),
      'title': 'Arcade'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Color(0xFFF6F8FF),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20))),
      child: Column(
        children: [
          Container(
            height: 140,
            padding: const EdgeInsets.all(25),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) => Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: list[index]['color'] as Color,
                    ),
                    child: Icon(
                      list[index]['icon'] as IconData,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    list[index]['title'] as String,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(0.7),
                      fontSize: 16,
                    ),
                  )
                ],
              ),
              separatorBuilder: (_, index) => const SizedBox(
                width: 33,
              ),
              itemCount: list.length,
            ),
          ),
          _buildTitle('Popular Game'),
          PopularGameCard(),
          _buildTitle('Newest Game'),
          NewestGameCard(),
        ],
      ),
    );
  }

  Widget _buildTitle(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      width: double.maxFinite,
      child: Text(text,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
    );
  }
}
