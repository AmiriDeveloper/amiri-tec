import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tec/component/my_colors.dart';

class Single extends StatelessWidget {
  const Single({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: size.height / 2,
                    width: double.infinity,
                    child: CachedNetworkImage(
                      imageUrl:
                          "https://cdn2.unrealengine.com/ac2-gamename-store-landscape-2560x1440-2560x1440-aa944fa0e8c6.jpg",
                      imageBuilder: (context, imageProvider) => Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          image: DecorationImage(
                              image: imageProvider, fit: BoxFit.cover),
                        ),
                      ),
                      placeholder: (context, url) => const SpinKitFadingCube(
                        color: SolidColors.primeryColorpurple,
                        size: 32,
                      ),
                      errorWidget: ((context, url, error) =>
                          const Icon(Icons.broken_image)),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 60,
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: GradiantColrs.singleAppBarGradint)),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      SizedBox(width: 10),
                      Icon(Icons.arrow_back, color: Colors.white),
                      Expanded(child: SizedBox()),
                      Icon(Icons.bookmark_border_outlined, color: Colors.white),
                      SizedBox(width: 10),
                      Icon(Icons.share, color: Colors.white),
                      SizedBox(width: 10),
                    ],
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                    "رازهای اساشینز کرید والهالا: از هاری پوتر وارباب حلقه ها تا دارک سولز ",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                          color: Colors.grey, shape: BoxShape.circle),
                      child: const Icon(
                        Icons.person,
                        size: 50,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(" فاطمه امیری",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(width: 10),
                    Text("تاریخ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[300])),
                  ],
                ),
              ),
              Container(
                height: 700,
                width: double.infinity,
                color: Colors.amber,
              )
            ],
          ),
        ),
      ),
    );
  }
}
