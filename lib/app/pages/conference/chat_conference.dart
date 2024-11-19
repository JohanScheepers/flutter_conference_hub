import 'package:flutter/material.dart';

class ChatConferencePage extends StatefulWidget {
  const ChatConferencePage({super.key});

  @override
  State<ChatConferencePage> createState() => _ChatConferencePageState();
}

class _ChatConferencePageState extends State<ChatConferencePage> {
  @override
  Widget build(BuildContext context) {
    return const Text("Attendees Chat: Allow attendees to communicate with each other and organizers within the app.\nGroup Chat: Facilitate discussions based on interests or specific sessions.");
  }
}