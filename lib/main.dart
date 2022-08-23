import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tec/component/my_colors.dart';
import 'package:tec/views/main_screen/article_list_screen.dart';
import 'package:tec/views/main_screen/home_scren.dart';
import 'package:tec/views/main_screen/main_screen.dart';
import 'package:tec/views/my_cats.dart';
import 'package:tec/views/single.dart';
import 'package:tec/views/splash_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Localizations Sample App',
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('fa', ''), // farsi
        ],
        theme: ThemeData(
            fontFamily: 'Dana',
            textTheme: const TextTheme(
              headline1: TextStyle(
                  fontFamily: 'Dana',
                  fontSize: 19,
                  color: SolidColors.posterTitlewhite10,
                  fontWeight: FontWeight.w800),
              headline2: TextStyle(
                  fontFamily: 'Dana',
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
              headline4: TextStyle(
                  fontFamily: 'Dana',
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: SolidColors.textTitleblack),
              subtitle1: TextStyle(
                  fontFamily: 'Dana',
                  fontSize: 13,
                  color: SolidColors.scaffoldBGwhite,
                  fontWeight: FontWeight.w500),
              bodyText1: TextStyle(
                  fontFamily: 'Dana',
                  fontSize: 13,
                  fontWeight: FontWeight.w300,
                  color: SolidColors.colorTitleblue),
            )),
        debugShowCheckedModeBanner: false,
        home: Single()
        //MainScreen(),
        );
  }
}
