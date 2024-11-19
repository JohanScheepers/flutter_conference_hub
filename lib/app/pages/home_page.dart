import 'package:flutter/material.dart';

import 'package:flutter_conference_hub/app/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  final dynamic title;

  const HomePage({super.key, required this.title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Flutter Conference Hub"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const EventCarouselSlider(width: 200),
            const FlutterLogo(
              size: 100,
            ),
            Text(
              "Flutter Conference Hu",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(onPressed: () {}, child: const Text("Log In")),
            IconButton(
              iconSize: 72,
              onPressed: () {},
              icon: const Icon(Icons.favorite),
            ),
          ],
        ),
      ),
    );
  }
}
