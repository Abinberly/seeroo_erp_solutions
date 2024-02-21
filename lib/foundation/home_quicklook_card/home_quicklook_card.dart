import 'package:flutter/material.dart';

class QuickLook extends StatelessWidget {
  const QuickLook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width/4,
      child: const Card(
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
