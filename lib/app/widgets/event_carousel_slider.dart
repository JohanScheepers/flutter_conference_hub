import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../const/const.dart';

class EventCarouselSlider extends StatelessWidget {
  const EventCarouselSlider({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      width: width,
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          viewportFraction: 1.0,
        ),
        items: upCommingEvents
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
    );
  }
}
