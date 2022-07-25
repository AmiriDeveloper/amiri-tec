import 'package:flutter/material.dart';
import 'package:tec/component/my_component.dart';
import 'package:tec/component/my_colors.dart';
import 'package:tec/component/my_string.dart';

class profileScreen extends StatelessWidget {
  const profileScreen({
    Key? key,
    required this.size,
    required this.theme,
    required this.bodyMargin,
  }) : super(key: key);

  final Size size;
  final TextTheme theme;
  final double bodyMargin;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/user.png",
              height: 60,
              color: Colors.black,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/blue_pen.png',
                  color: solidColors.colorTitle_blue,
                  height: 20,
                ),
                Text(
                  'ویرایش عکس پروفایل',
                  style: theme.bodyText1,
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Text(
              ' فاطمه امیری',
              style: theme.headline4,
            ),
            Text(
              'fatemahamiri@gmail.com',
              style: theme.headline4,
            ),
            SizedBox(
              height: 60,
            ),
            techDevider(size: size),
            /////////1
            InkWell(
                onTap: (() {}),
                splashColor: solidColors.primeryColor_purple,
                child: SizedBox(
                  height: 50,
                  child: Center(
                    child: Text(
                      myString.favoritBlig,
                      style: theme.headline4,
                    ),
                  ),
                )),
            techDevider(
              size: size,
            ),
            ////////2
            InkWell(
                onTap: (() {}),
                splashColor: solidColors.primeryColor_purple,
                child: SizedBox(
                  height: 50,
                  child: Center(
                    child: Text(
                      myString.favoritPodcasts,
                      style: theme.headline4,
                    ),
                  ),
                )),
            techDevider(size: size),
            //////////3
            InkWell(
                onTap: (() {}),
                splashColor: solidColors.primeryColor_purple,
                child: SizedBox(
                  height: 50,
                  child: Center(
                    child: Text(
                      myString.logOut,
                      style: theme.headline4,
                    ),
                  ),
                )),
            SizedBox(
              height: 60,
            )
          ],
        ));
  }
}
