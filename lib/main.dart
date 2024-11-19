import 'package:flutter/material.dart';
import 'package:flutter_conference_hub/app/pages/conference_hub_home_page.dart';

import 'app/const/const.dart';

void main() {
  runApp(const ConferenceHub());
}

class ConferenceHub extends StatelessWidget {
  const ConferenceHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Conference Hub',
      theme: ThemeData(
        colorScheme: darkColorScheme,
        useMaterial3: true,
      ),
      home: const ConferenceHubHomePage(),
    );
  }
}
