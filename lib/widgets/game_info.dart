import 'package:flutter/material.dart';
import 'package:flutter_game_store_app/model/game.dart';
import 'package:flutter_game_store_app/widgets/game_desciption.dart';
import 'package:flutter_game_store_app/widgets/game_gallery.dart';
import 'package:flutter_game_store_app/widgets/game_header.dart';
import 'package:flutter_game_store_app/widgets/game_review.dart';

class GameInfo extends StatelessWidget {
  final Game game;

  const GameInfo({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          GameHeader(game: game),
          GameGallery(game: game),
          GameDescription(game: game),
          GameReview(game: game),
        ],
      ),
    );
  }
}
