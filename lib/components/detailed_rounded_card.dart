import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'rounded_card.dart';

class DetailedRoundedCard extends StatelessWidget {
  final String message;
  final String title;
  final String description;
  final String date;

  const DetailedRoundedCard({
    super.key,
    required this.message,
    required this.title,
    required this.description,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return RoundedCard(
      flex1: 3, // 20% of height
      flex2: 10, // 80% of height
      child1: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
            message.length > 80 ? '${message.substring(0, 80)}...' : message),
      ),
      child2: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
              child: Text(title,
                  style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFFFFFF))),
            ),
            Text(
                description.length > 120
                    ? '${description.substring(0, 120)}...'
                    : description,
                style: const TextStyle(fontSize: 16, color: Color(0xFFFFFFFF))),
            const SizedBox(height: 8),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox.shrink(), // Placeholder for expanded space
                  Row(
                    children: [
                      const Icon(Icons.calendar_today,
                          color: Color(0xFFFFFFFF)),
                      const SizedBox(width: 4),
                      Text(
                          DateFormat('dd/MM/yyyy').format(DateTime.parse(date)),
                          style: const TextStyle(
                              fontSize: 16, color: Color(0xFFFFFFFF))),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
