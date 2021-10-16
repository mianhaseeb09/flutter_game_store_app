import 'package:flutter/material.dart';
import 'package:flutter_game_store_app/model/game.dart';
import 'package:flutter_game_store_app/widgets/detail_sliver_delegate.dart';
import 'package:flutter_game_store_app/widgets/game_info.dart';

class DetailScreen extends StatelessWidget {
  final Game game;

  const DetailScreen({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: DetailSliverDelegate(
                game: game, expandedHeight: 360, roundedContainerHeight: 30),
          ),
          SliverToBoxAdapter(child: GameInfo(game: game))
        ],
      ),
    );
  }
}
