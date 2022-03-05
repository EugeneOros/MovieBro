import 'package:flutter/material.dart';
import 'package:flutter_recruitment_task/widgets/buttons/icon_button_app_bar.dart';

class MovieDetailsAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const MovieDetailsAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: Theme.of(context).textTheme.headline6!.copyWith(color: Theme.of(context).colorScheme.onSecondary),
        textAlign: TextAlign.center,
        maxLines: 2,
      ),
      centerTitle: true,
      elevation: 0.0,
      titleSpacing: 0,
      toolbarHeight: 70,
      shadowColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      leading: IconButtonAppBar(
        icon: Icons.arrow_back_ios_rounded,
        onPressed: () => Navigator.pop(context, false),
      ),
      actions: [SizedBox(width: 50)],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(70);
}
