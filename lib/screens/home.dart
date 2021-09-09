import 'package:challenge_5/screens/components/header_section.dart';
import 'package:challenge_5/screens/components/main_type.dart';
import 'package:challenge_5/screens/components/popular_items.dart';
import 'package:flutter/material.dart';

import 'components/modern_items.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<IconData> items = [
    Icons.tv,
    Icons.camera,
    Icons.verified_user,
    Icons.textsms,
    Icons.monetization_on,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 15,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              HeaderSection(),
              MainTypes(items: items),
              const SizedBox(height: 15),
              ModernItems(),
              const SizedBox(height: 15),
              PopularItems(),
            ],
          ),
        ),
      ),
    );
  }
}
