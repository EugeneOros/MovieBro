import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemFooter extends StatelessWidget {
  final double avgVoteRating;

  const ItemFooter({Key? key, required this.avgVoteRating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(width: 10),
        FaIcon(
          FontAwesomeIcons.star,
          color: Theme.of(context).colorScheme.secondary,
          size: 20,
        ),
        SizedBox(width: 5),
        Text(
          avgVoteRating.toString() + '/10',
          style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Theme.of(context).colorScheme.secondary),
        ),
        const Spacer(),
        Icon(
          Icons.arrow_forward_ios,
          color: Theme.of(context).colorScheme.primary,
          size: 20,
        )
      ],
    );
  }
}
