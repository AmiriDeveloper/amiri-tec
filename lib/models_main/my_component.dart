import 'package:flutter/material.dart';
import 'package:tec/my_colors.dart';

class techDevider extends StatelessWidget {
  const techDevider({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 1.6,
      color: solidColors.DividerColor,
      indent: size.width / 6,
      endIndent: size.width / 6,
    );
  }
}
