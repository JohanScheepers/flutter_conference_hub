import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_conference_hub/dummy_data/dummy_data.dart';
import 'package:go_router/go_router.dart';

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
              width: 500,
              child: DecoratedBox(decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.white)),
                child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    viewportFraction: 1.0,
                  ),
                  items: upComingEvents
                      .map(
                        (item) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  item.event,
                                  style: TextStyle(fontSize: 30),
                                ),
                                Text(item.location,
                                    style: TextStyle(fontSize: 24)),
                                Text(
                                    "From: ${item.startDate.toString().substring(0, 10)}",
                                    style: TextStyle(fontSize: 24)),
                                Text(
                                    "To: ${item.endDate.toString().substring(0, 10)}",
                                    style: TextStyle(fontSize: 24))
                              ],
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
            const FlutterLogo(
              size: 100,
            ),
            const Text(
              "Flutter Conference Hub",
            ),
            ElevatedButton(onPressed: () {}, child: const Text("Log In")),
            IconButton(
              iconSize: 72,
              onPressed: () {
                context.go("/map");
              },
              icon: const Icon(Icons.favorite),
            ),
            SizedBox(
              width: 250,
              height: 100,
              child: CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  viewportFraction: 1.0,
                ),
                items: sponsors
                    .map((item) => Column(
                          children: [
                            Text(item.name),
                            Text(item.contact),
                            Text(item.web)
                          ],
                        ))
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
