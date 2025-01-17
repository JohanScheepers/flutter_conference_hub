import 'package:flutter/material.dart';

class AttendeesManagementOrganizersPage extends StatefulWidget {
  const AttendeesManagementOrganizersPage({super.key});

  @override
  State<AttendeesManagementOrganizersPage> createState() => _AttendeesManagementOrganizersPageState();
}

class _AttendeesManagementOrganizersPageState extends State<AttendeesManagementOrganizersPage> {
  @override
  Widget build(BuildContext context) {
    return const Text("Management:Add, edit, and delete attendees.\nCheck-in: Use the app for quick and easy check-in (with QR code scanning).\n Reporting:Generate reports on attendance, session popularity, and feedback.");
  }
}