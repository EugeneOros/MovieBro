import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.4,
      child: Container(
        alignment: Alignment.center,
        child: SvgPicture.asset(
          "assets/watching_movie.svg",
          width: MediaQuery.of(context).size.width-60,
        ),
      ),
    );
  }
}
