import 'package:flutter/material.dart';
import 'package:flutter_recruitment_task/config/theme_data.dart';
import 'package:flutter_recruitment_task/routes/on_generate_route.dart';
import 'package:flutter_recruitment_task/widgets/app_scroll_behavior.dart';

class MovieApp extends StatelessWidget {
  const MovieApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MovieBro',
      debugShowCheckedModeBanner: false,
      theme: getThemeData(),
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: const AppScrollBehavior(),
          child: child!,
        );
      },
      initialRoute: '/',
      onGenerateRoute: (settings) => onGenerateRoute(settings),
    );
  }
}
