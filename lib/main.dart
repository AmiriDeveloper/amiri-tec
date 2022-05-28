import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tec/splash_screen.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

//import 'package:tec/gen/assets.gen.dart';
void main() {
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
          fontFamily: 'Simplified Arabic',
          textTheme: const TextTheme(
            headline1: TextStyle(
                fontFamily: 'Simplified Arabic',
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w700),
            bodyText1: TextStyle(
                fontFamily: 'Simplified Arabic',
                fontSize: 13,
                fontWeight: FontWeight.w300),
            headline2: TextStyle(
                fontFamily: 'Simplified Arabic',
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Colors.white),
            headline3: TextStyle(
                fontFamily: 'Simplified Arabic',
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Colors.red),
            headline4: TextStyle(
                fontFamily: 'Simplified Arabic',
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 70, 70, 70)),
          )),
      debugShowCheckedModeBanner: false,
      home: splashScreen(),
    );
  }
}
