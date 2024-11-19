import 'package:flutter/material.dart';

class ScheduleConferencePage extends StatefulWidget {
  const ScheduleConferencePage({super.key});

  @override
  State<ScheduleConferencePage> createState() => _ScheduleConferencePageState();
}

class _ScheduleConferencePageState extends State<ScheduleConferencePage> {
  @override
  Widget build(BuildContext context) {
    return const Text("Detailed View: Provide information about each session, including speaker(s), description, location, start/end time, and Q&A.\nInteractive Map Integration: Allow attendees to see the location of sessions on the map.\nLive Updates: Display changes to the schedule in real-time, potentially with push notifications.");
  }
}