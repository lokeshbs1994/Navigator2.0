import 'package:flutter/material.dart';
import 'package:navigation_example1/components/bottomnav.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stettings')),
      bottomNavigationBar: const BottomNav(1),
    );
  }
}
