import 'package:flutter/material.dart';

class MapCreationOrganizersPage extends StatefulWidget {
  const MapCreationOrganizersPage({super.key});

  @override
  State<MapCreationOrganizersPage> createState() => _MapCreationOrganizersPageState();
}

class _MapCreationOrganizersPageState extends State<MapCreationOrganizersPage> {
  @override
  Widget build(BuildContext context) {
    return const Text("Interactive Map Editor: Allow organizers to create and edit the conference map.\nBLE Beacon Management: Define the locations of BLE beacons and assign them to specific POIs.\nCustomizable Markers:Allow organizers to use different icons for various POIs.");
  }
}