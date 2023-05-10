import 'package:flutter/material.dart';
import 'package:schrodinger_hat_app/base.dart';

import 'components/detailed_rounded_card.dart';
import 'constants/events.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 24.0, 0, 16.0),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(8.0, 8.0, 0, 32.0),
                  child: Text(
                    "Welcome back Hatter!",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width *
                      0.8, // Adjust this value as needed
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: events.length,
                    itemBuilder: (BuildContext context, int index) {
                      return DetailedRoundedCard(
                        message: events[index].message,
                        title: events[index].title,
                        description: events[index].description,
                        date: events[index]
                            .date
                            .toIso8601String(), // You may want to format the date as needed
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          // Add more widgets here for the main screen content
        ],
      ),
      currentIndex: 0,
      onBottomNavTap: (int value) {},
    );
  }
}
