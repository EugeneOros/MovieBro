import 'package:flutter/material.dart';
import 'package:flutter_recruitment_task/config/colors.dart';
import 'package:flutter_recruitment_task/pages/movies/widgets/app_bar/search_field.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MoviesAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MoviesAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 5,
      shadowColor: Colors.grey,
      toolbarHeight: 90,
      backgroundColor: lightPurpleColor,
      leadingWidth: 70,
      titleSpacing: 5,
      leading: Padding(
        padding: EdgeInsets.only(left: 20),
        child: SvgPicture.asset("assets/logo.svg", width: 50),
      ),
      title: Text("MovieBro", style: Theme.of(context).textTheme.headline1),
      bottom: SearchField(),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(150);
}
