import 'package:flutter/material.dart';
import 'package:tec/fack_data.dart';
import 'package:tec/my_colors.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;

    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.menu),
                  Image.asset(
                    'assets/images/logo.png',
                    height: 70,
                    width: 90,
                  ),
                  Icon(Icons.search),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Stack(
                children: [
                  Container(
                    width: size.width / 1.20,
                    height: size.height / 4.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        image: DecorationImage(
                            image: AssetImage(homePagePosterMap["imageAsset"]),
                            fit: BoxFit.cover)),
                    foregroundDecoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        gradient: LinearGradient(
                            colors: gradiantColrs.posterCoverGradiant,
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter)),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 8,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                                homePagePosterMap["writer"] +
                                    " " +
                                    homePagePosterMap["data"],
                                style: theme.subtitle1),
                            Text(homePagePosterMap["view"],
                                style: theme.subtitle1),
                          ],
                        ),
                        Text(homePagePosterMap["title"],
                            style: theme.headline1),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
