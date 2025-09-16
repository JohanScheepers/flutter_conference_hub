import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_conference_hub/app/const/const.dart';
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
              height: kHeightSuperLarge,
              width: kWidthMegaLarge,
              child: DecoratedBox(decoration: BoxDecoration(border: Border.all(width: 1,color: Theme.of(context).colorScheme.onPrimary)),
                child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    viewportFraction: 1.0,
                  ),
                  items: upComingEvents
                      .map(
                        (item) => Padding(
                          padding: const EdgeInsets.all(kPaddingMedium),
                          child: Padding(
                            padding: const EdgeInsets.all(kPaddingSmall),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  item.event,
                                  style: kHeadingTextStyle,
                                ),
                                Text(item.location,
                                    style: kSubheadingTextStyle),
                                Text(
                                    "From: ${item.startDate.toString().substring(0, 10)}",
                                    style: kSubheadingTextStyle),
                                Text(
                                    "To: ${item.endDate.toString().substring(0, 10)}",
                                    style: kSubheadingTextStyle)
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
              size: kIconSizeExtraLarge,
            ),
            const Text(
              "Flutter Conference Hub",
            ),
            ElevatedButton(onPressed: () {}, child: const Text("Log In")),
            IconButton(
              iconSize: kIconSizeLarge,
              onPressed: () {
                context.go("/map");
              },
              icon: const Icon(Icons.favorite),
            ),
            SizedBox(
              width: kWidthSuperLarge,
              height: kHeightExtraLarge,
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
