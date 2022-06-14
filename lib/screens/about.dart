import 'package:flutter/material.dart';
import 'package:navigation_example1/components/bottomnav.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About')),
      bottomNavigationBar: const BottomNav(2),
    );
  }
}
