import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tec/main_screen.dart';
import 'package:tec/my_colors.dart';

class splashScreen extends StatefulWidget {
  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => MainScreen()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                height: 32,
              ),
              SizedBox(
                height: 32,
              ),
              SpinKitFadingCube(
                color: solidColors.primeryColor_purple,
                size: 32.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
