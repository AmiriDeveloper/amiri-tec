import 'package:flutter/material.dart';
import 'package:tec/gen/assets.gen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.menu),
                Image.asset('assets.images.logo.png', height: 20),
                Icon(Icons.search),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
