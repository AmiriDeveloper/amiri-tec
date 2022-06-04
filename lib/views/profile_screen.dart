import 'package:flutter/material.dart';
import 'package:tec/my_colors.dart';

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
              children: [
                Image.asset(
                  'assets/images/blue_pen.png',
                  color: solidColors.colorTitle_blue,
                  height: 30,
                ),
                Text(
                  'ویرایش عکس پروفایل',
                  style: theme.bodyText1,
                )
              ],
            )
          ],
        ));
  }
}
