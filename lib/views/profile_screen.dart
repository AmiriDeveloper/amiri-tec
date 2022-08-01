import 'package:flutter/material.dart';
import 'package:tec/component/my_colors.dart';
import 'package:tec/component/my_string.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    //var size = MediaQuery.of(context).size;
    //double bodyMargin = size.width / 10;

    return SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(top: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/bot.jpg",
                height: 100,
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                    width: 30,
                    child: Image.asset(
                      "assets/images/blue_pen.png",
                      color: SolidColors.primeryColorpurple,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    MyStrings.imageProfileEdit,
                    style: textTheme.bodyLarge,
                  )
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Text(
                "فاطمه امیری",
                style: textTheme.headline4,
              ),
              Text(
                "fatemeamiri@gmail.com",
                style: textTheme.headline4,
              ),
              const SizedBox(
                height: 40,
              ),
              const Divider(),
              InkWell(
                onTap: (() {
                  //یه چیزی اجرا بشه
                }),
                splashColor: SolidColors.primeryColorpurple,
                child: SizedBox(
                    height: 45,
                    child: Center(
                        child: Text(
                      MyStrings.myFavBlog,
                      style: textTheme.headline4,
                    ))),
              ),
              const Divider(),
              InkWell(
                onTap: (() {
                  //یه چیزی اجرا بشه
                }),
                splashColor: SolidColors.primeryColorpurple,
                child: SizedBox(
                    height: 45,
                    child: Center(
                        child: Text(
                      MyStrings.myFavPodcast,
                      style: textTheme.headline4,
                    ))),
              ),
              const Divider(),
              InkWell(
                onTap: (() {
                  //یه چیزی اجرا بشه
                }),
                splashColor: SolidColors.primeryColorpurple,
                child: SizedBox(
                    height: 45,
                    child: Center(
                        child: Text(
                      MyString.logOut,
                      style: textTheme.headline4,
                    ))),
              ),
              const SizedBox(
                height: 60,
              ),
            ],
          ),
        ));
  }
}
