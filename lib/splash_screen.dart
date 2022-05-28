import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class splashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: Assets.images.logo,
                height: 64,
              ),
              /*  const spinkit = SpinKitRotatingCircle(
  color: Colors.white,
  size: 50.0,
),*/
            ],
          ),
        ),
      ),
    );
  }
}

class Assets {
  static var images;
}
