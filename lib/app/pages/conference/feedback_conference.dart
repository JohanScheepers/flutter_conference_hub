import 'package:flutter/material.dart';

class FeedbackConferencePage extends StatefulWidget {
  const FeedbackConferencePage({super.key});

  @override
  State<FeedbackConferencePage> createState() => _FeedbackConferencePageState();
}

class _FeedbackConferencePageState extends State<FeedbackConferencePage> {
  @override
  Widget build(BuildContext context) {
    return const Text("Allow attendees to rate the overall conference experience and provide feedback.");
  }
}