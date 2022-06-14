import 'package:flutter/material.dart';
import 'package:navigation_example1/screens/all.dart';
import 'package:provider/provider.dart';
import 'controllers/navigation.dart';
import 'controllers/game.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ListenableProvider<NavigationController>(
          create: (_) => NavigationController(),
        ),
        ListenableProvider<GameController>(
          create: (_) => GameController(),
        ),
      ],
      child: NavApp(),
    ),
  );
}

class NavApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Navigator(
        pages: getPages(context),
        onPopPage: (route, result) {
          bool popStatus = route.didPop(result);
          if (popStatus == true) {
            Provider.of<NavigationController>(context, listen: false)
                .changeScreen('/');
          }
          return popStatus;
        },
      ),
    );
  }
}

List<Page> getPages(context) {
  NavigationController navigation = Provider.of<NavigationController>(context);
  List<Page> pageList = [];

  pageList.add(const MaterialPage(child: ListScreen()));

  switch (navigation.screenName) {
    case '/settings':
      pageList.add(const MaterialPage(child: SettingsScreen()));
      break;
    case '/about':
      pageList.add(const MaterialPage(child: AboutScreen()));
      break;
    case '/details':
      pageList.add(const MaterialPage(child: DetailsScreen()));
      break;
  }
  return pageList;
}
