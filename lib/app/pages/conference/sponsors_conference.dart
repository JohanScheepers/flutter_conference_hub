import 'package:flutter/material.dart';

class SponsorsConferencePage extends StatefulWidget {
  const SponsorsConferencePage({super.key});

  @override
  State<SponsorsConferencePage> createState() => _SponsorsConferencePageState();
}

class _SponsorsConferencePageState extends State<SponsorsConferencePage> {
  @override
  Widget build(BuildContext context) {
    return const Text(
        "Listing:Display sponsors with their logos, descriptions, websites, and contact details.\nInteractive Map Integration: Show sponsor booths on the map.\nSocial Media Integration: Allow attendees to follow sponsors on social media.");
  }
}
