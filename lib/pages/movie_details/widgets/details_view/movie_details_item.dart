import 'package:flutter/material.dart';

class MovieDetailsItem extends StatelessWidget {
  final String title;
  final String value;
  final bool isEven;

  const MovieDetailsItem({Key? key, required this.title, required this.value, this.isEven = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      color: isEven ? Theme.of(context).colorScheme.secondary.withOpacity(0.4) : Colors.transparent,
      child: Row(
        children: [
          Text(title, style: Theme.of(context).textTheme.bodyText2),
          Spacer(),
          Text(value, style: Theme.of(context).textTheme.bodyText1),
        ],
      ),
    );
  }
}
