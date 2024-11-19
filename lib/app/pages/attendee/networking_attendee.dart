import 'package:flutter/material.dart';



class NetworkingAttendeePage extends StatefulWidget {
  const NetworkingAttendeePage({super.key});

  @override
  State<NetworkingAttendeePage> createState() => _NetworkingAttendeePageState();
}
class _NetworkingAttendeePageState extends State<NetworkingAttendeePage> {
  @override
  Widget build(BuildContext context) {
    return const Text("Scanning other attendees QR code to connect and save contact details");
  }
}