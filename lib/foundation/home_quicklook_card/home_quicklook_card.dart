import 'package:flutter/material.dart';

class QuickLook extends StatelessWidget {
  const QuickLook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Card(
        child: Column(
          children: [
            Text(
              'Points',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Text(
              '1',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
