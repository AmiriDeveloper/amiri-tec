import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tec/my_colors.dart';
import 'package:tec/views/splash_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

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
                color: solidColors.posterTitle_white10,
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
                color: solidColors.textTitle_black),
            subtitle1: TextStyle(
                fontFamily: 'Dana',
                fontSize: 13,
                color: solidColors.scaffoldBG_white,
                fontWeight: FontWeight.w500),
            bodyText1: TextStyle(
                fontFamily: 'Dana',
                fontSize: 13,
                fontWeight: FontWeight.w300,
                color: solidColors.colorTitle_blue),
          )),
      debugShowCheckedModeBanner: false,
      home: splashScreen(),
    );
  }
}
