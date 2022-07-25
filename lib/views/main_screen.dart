import 'package:flutter/material.dart';
import 'package:tec/component/my_colors.dart';
import 'package:tec/views/home_scren.dart';
import 'package:tec/views/profile_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var selectedPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    double bodyMargin = size.width / 10;

    List<Widget> tecViewMainScrenPages = [
      homeScreen(size: size, theme: theme, bodyMargin: bodyMargin),
      homeScreen(size: size, theme: theme, bodyMargin: bodyMargin),
      profileScreen(size: size, theme: theme, bodyMargin: bodyMargin),
    ];

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
            child: Center(
          child: tecViewMainScrenPages[selectedPageIndex],
        )),
        BottonNavigation(
          size: size,
          bodyMargin: bodyMargin,
          changeScreen: (int Value) {
            setState(() {
              selectedPageIndex = Value;
            });
          },
        ),
      ]),
    );
  }
}

class BottonNavigation extends StatelessWidget {
  const BottonNavigation({
    Key? key,
    required this.size,
    required this.bodyMargin,
    required this.changeScreen,
  }) : super(key: key);

  final Size size;
  final double bodyMargin;
  final Function(int) changeScreen;

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
                      onPressed: (() => changeScreen(0)),
                      icon: Image.asset(
                        "assets/images/home.png",
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: (() => changeScreen(1)),
                      icon: Image.asset(
                        "assets/images/write.png",
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: (() => changeScreen(2)),
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
