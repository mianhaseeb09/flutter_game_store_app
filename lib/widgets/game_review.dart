import 'package:flutter/material.dart';
import 'package:flutter_game_store_app/constants/colors.dart';
import 'package:flutter_game_store_app/model/game.dart';

class GameReview extends StatelessWidget {
  final Game game;

  const GameReview({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Rating and Reviews',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'view',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  game.score.toString(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 48),
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildStar(),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      '${game.review.toString()} review',
                      style: const TextStyle(color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: double.maxFinite,
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: kPrimary,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: const Text(
                  'Install',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            )
          ],
        ));
  }

  Widget _buildStar() {
    final List<Color> colors = [
      Colors.amber,
      Colors.amber,
      Colors.amber,
      Colors.amber,
      Colors.grey.withOpacity(0.3)
    ];
    return Row(
      children: colors
          .map((e) => Icon(
                Icons.star,
                size: 25,
                color: e,
              ))
          .toList(),
    );
  }
}
