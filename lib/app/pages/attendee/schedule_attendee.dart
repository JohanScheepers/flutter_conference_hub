import 'package:flutter/material.dart';

class ScheduleAttendeePage extends StatefulWidget {
  const ScheduleAttendeePage({super.key});

  @override
  State<ScheduleAttendeePage> createState() => _ScheduleAttendeePageState();
}

class _ScheduleAttendeePageState extends State<ScheduleAttendeePage> {
  @override
  Widget build(BuildContext context) {
    return const Text(
        "Listing: Display talks, workshops, demos, keynote sessions, and other activities.\nFiltering: Allow attendees to filter by track, category, speaker, date, time, or keywords.\nSearch: Implement a robust search functionality for quick access to specific sessions.\nFavorites: Enable attendees to mark sessions as favorites and create a personalized schedule.\nNotifications: Send reminders about upcoming sessions or changes in the schedule.\nFeedback:Provide attendees the option to rate sessions and provide feedback.");
  }
}
