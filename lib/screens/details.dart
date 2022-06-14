import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controllers/game.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GameController game = Provider.of<GameController>(context);
    return Scaffold(
      appBar: AppBar(title: Text('${game.list[game.gameIndex].name} Details')),
      body: Center(
        child: Text(game.list[game.gameIndex].description),
      ),
    );
  }
}
