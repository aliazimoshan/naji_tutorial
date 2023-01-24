import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'presentation/movie/movie_page.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NRDC Tutorial',
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      //theme: ThemeData(
      //  primarySwatch: Colors.blue,
      //),
      home: MoviePage(),
    );
  }
}
