import 'package:flutter/material.dart';
import 'package:flutter_conference_hub/app/const/const.dart';
import 'package:go_router/go_router.dart';

class ErrorPage extends StatelessWidget {
  const   ErrorPage(this.error, {super.key});
    final GoException? error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("We encountered a problem"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(error?.message ?? "Sorry"),
            const SizedBox(
              height: kHeightMedium,
            ),
            ElevatedButton(
                onPressed: () {
                  context.go("/");
                },
                child: const Text("Go to Home Screen"))
          ],
        ),
      ),
    );
  }
}