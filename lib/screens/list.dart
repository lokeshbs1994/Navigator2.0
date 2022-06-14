import 'package:flutter/material.dart';
import 'package:navigation_example1/components/bottomnav.dart';
import 'package:navigation_example1/controllers/game.dart';
import 'package:navigation_example1/controllers/navigation.dart';
import 'package:provider/provider.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GameController game = Provider.of<GameController>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Video Game List')),
      body: ListView.builder(
        itemCount: game.list.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(game.list[index].name),
            onTap: () {
              Provider.of<GameController>(context, listen: false)
                  .changeIndex(index);
              Provider.of<NavigationController>(context, listen: false)
                  .changeScreen('/details');
            },
          );
        },
      ),
      bottomNavigationBar: const BottomNav(0),
    );
  }
}
