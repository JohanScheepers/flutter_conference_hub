import 'package:flutter/material.dart';

void main() {
  runApp(const ConferenceHub());
}

class ConferenceHub extends StatelessWidget {
  const ConferenceHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Conference Hub',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: Text("Flutter"),
      ),
    );
  }
}
