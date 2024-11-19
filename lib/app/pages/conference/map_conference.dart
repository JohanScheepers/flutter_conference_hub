import 'package:flutter/material.dart';

class MapConferencePage extends StatefulWidget {
  const MapConferencePage({super.key});

  @override
  State<MapConferencePage> createState() => _MapConferencePageState();
}

class _MapConferencePageState extends State<MapConferencePage> {
  @override
  Widget build(BuildContext context) {
    return const Text("Indoor Navigation: Use a 2D map of the venue and integrate with BLE beacons (more on this below).\nLocation Tracking:Track the user's location within the venue and provide directions to specific points of interest (booths, sessions, restrooms, etc.), this will be handled by the app and not the back end.\nPoints of Interest (POIs): Mark booths, speaker rooms, food areas, networking areas, and other relevant locations.\nSearch: Allow attendees to search for specific locations.\nAccessibility: Ensure the map is usable for users with disabilities (e.g., color contrast, alternative navigation methods).");
  }
}