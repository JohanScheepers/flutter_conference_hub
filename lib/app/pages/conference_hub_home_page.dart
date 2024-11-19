import 'package:flutter/material.dart';

import 'package:flutter_conference_hub/app/widgets/widgets.dart';

class ConferenceHubHomePage extends StatefulWidget {
  const ConferenceHubHomePage({super.key});

  @override
  State<ConferenceHubHomePage> createState() => _ConferenceHubHomePageState();
}

class _ConferenceHubHomePageState extends State<ConferenceHubHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Flutter Conference Hub"),
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
              "Flutter Conference Hub",
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
