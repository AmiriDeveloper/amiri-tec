import 'package:flutter/material.dart';
import 'package:tec/models_main/fack_data.dart';
import 'package:tec/my_colors.dart';
import 'package:tec/my_string.dart';
import 'package:tec/models_main/basic_data.dart';
import 'package:tec/views/home_scren.dart';
import 'package:tec/views/profile_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    double bodyMargin = size.width / 10;

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: solidColors.scaffoldBG_white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.menu,
              size: 30,
              color: Colors.black,
            ),
            Image.asset(
              'assets/images/logo.png',
              height: 70,
              width: 90,
            ),
            Icon(
              Icons.search,
              color: Colors.black,
              size: 30,
            ),
          ],
        ),
      ),
      body: Stack(children: [
        Positioned.fill(
            child:
                homeScreen(size: size, theme: theme, bodyMargin: bodyMargin)),
        BottonNavigation(size: size, bodyMargin: bodyMargin),
      ]),
    );
  }
}

class BottonNavigation extends StatelessWidget {
  const BottonNavigation({
    Key? key,
    required this.size,
    required this.bodyMargin,
  }) : super(key: key);

  final Size size;
  final double bodyMargin;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 8,
      right: 0,
      left: 0,
      child: Container(
        height: size.height / 10,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: gradiantColrs.bottomNAVback,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: Padding(
          padding: EdgeInsets.only(right: bodyMargin, left: bodyMargin),
          child: Container(
            height: size.height / 8,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(18)),
                gradient: LinearGradient(colors: gradiantColrs.bottomNAV)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: (() {}),
                      icon: Image.asset(
                        "assets/images/home.png",
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: (() {}),
                      icon: Image.asset(
                        "assets/images/write.png",
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: (() {}),
                      icon: Image.asset(
                        "assets/images/user.png",
                        color: Colors.white,
                      ))
                ]),
          ),
        ),
      ),
    );
  }
}
