import 'package:flutter/material.dart';

class BadgeAttendeePage extends StatefulWidget {
  const BadgeAttendeePage({super.key});

  @override
  State<BadgeAttendeePage> createState() => _BadgeAttendeePageState();
}

class _BadgeAttendeePageState extends State<BadgeAttendeePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Badge"),
      ),
      body: const Text(
          "Information: Name, Photo, Title, Company, Contact Details, QR Code (for scanning), Conference Pass (e.g., VIP, Speaker, etc.)\nCustomization: Ability to change the background color or add a personal touch.\nAccessibility: Ensure the badge is accessible for users with visual impairments (e.g., using larger font sizes or alternative color schemes)."),
    );
  }
}