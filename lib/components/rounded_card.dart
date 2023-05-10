import 'package:flutter/material.dart';

class RoundedCard extends StatelessWidget {
  final Widget child1;
  final Widget child2;
  final int flex1;
  final int flex2;

  const RoundedCard({
    super.key,
    required this.child1,
    required this.child2,
    this.flex1 = 1,
    this.flex2 = 1,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double cardHeight = screenHeight * 0.5;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
      child: SizedBox(
        width: cardHeight,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: flex1,
                child: child1,
              ),
              Expanded(
                flex: flex2,
                child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xff93291e), Color(0xffed213a)],
                        stops: [0, 1],
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                    ),
                    child: child2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
