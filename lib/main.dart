import 'package:flutter/material.dart';
import 'package:flutter_conference_hub/app/pages/home_page.dart';

import 'app/const/const.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Conference Hub',
      theme: ThemeData(
        colorScheme: darkColorScheme,
        //colorScheme: lightColorScheme,
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Flutter Conference Hub'),
    );
  }
}
