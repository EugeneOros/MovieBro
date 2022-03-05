import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppPlaceholder extends StatelessWidget {
  final String svgImagePath;
  final String text;

  const AppPlaceholder({Key? key, required this.svgImagePath, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          SvgPicture.asset(
            svgImagePath,
            width: MediaQuery.of(context).size.width - 60,
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Theme.of(context).colorScheme.onSecondary),
            ),
          )
        ],
      ),
    );
  }
}
