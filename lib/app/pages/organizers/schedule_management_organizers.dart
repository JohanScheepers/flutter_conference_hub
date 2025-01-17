import 'package:flutter/material.dart';

class ScheduleManagementOrganizes extends StatefulWidget {
  const ScheduleManagementOrganizes({super.key});

  @override
  State<ScheduleManagementOrganizes> createState() => _ScheduleManagementOrganizesState();
}

class _ScheduleManagementOrganizesState extends State<ScheduleManagementOrganizes> {
  @override
  Widget build(BuildContext context) {
    return const Text("Content Management: Add, edit, and delete sessions, speakers, and other schedule items.\nNotifications: Send push notifications to attendees about schedule changes.");
  }
}
