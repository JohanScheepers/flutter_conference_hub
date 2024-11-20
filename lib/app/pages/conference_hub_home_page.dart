import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_conference_hub/app/const/const.dart';

import 'package:flutter_conference_hub/dummy_data/dummy_data_events.dart';

class ConferenceHubHomePage extends StatefulWidget {
  const ConferenceHubHomePage({super.key});

  @override
  State<ConferenceHubHomePage> createState() => _ConferenceHubHomePageState();
}

class _ConferenceHubHomePageState extends State<ConferenceHubHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Flutter Conference Hub"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 180,
              width: 200,
              child: CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  viewportFraction: 1.0,
                ),
                items: upComingEvents
                    .map(
                      (item) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            decoration: BoxDecoration(
                                color: darkColorScheme.primaryContainer,
                                borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    item.event,
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    item.location,
                                    style: const TextStyle(fontSize: 18),
                                  ),
                                  Text(
                                      "From: ${item.startDate.toString().substring(0, 10)}"),
                                  Text(
                                      "To: ${item.endDate.toString().substring(0, 10)}")
                                ],
                              ),
                            )),
                      ),
                    )
                    .toList(),
              ),
            ),
            const FlutterLogo(
              size: 100,
            ),
            Text(
              "Flutter Conference Hub",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(onPressed: () {}, child: const Text("Log In")),
            IconButton(
              iconSize: 72,
              onPressed: () {},
              icon: const Icon(Icons.favorite),
            ),
          ],
        ),
      ),
    );
  }
}
