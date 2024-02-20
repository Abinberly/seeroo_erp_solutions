import 'package:flutter/material.dart';

class SinglePreviewCard extends StatefulWidget {
  const SinglePreviewCard({super.key});

  @override
  State<SinglePreviewCard> createState() => _SinglePreviewCardState();
}

class _SinglePreviewCardState extends State<SinglePreviewCard> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Card(
        child: Column(
          children: [
            GridView.count(
              crossAxisSpacing: 1,
              mainAxisSpacing: 2,
              crossAxisCount: 3,
              children: const <Widget>[
                Text('Meals'),
                Text('Food Item'),
                Text('Amount'),
                Text('Breakfast'),
                Text('Idli/Sambar'),
                Text(' 30'),
                Text('Lunch'),
                Text('Meals/Fish'),
                Text(' 60'),
                Text('Dinner'),
                Text('Kanji'),
                Text(' 30'),
              ],
            ),
            const SizedBox(
              height: 12.0,
            ),
            Divider(
              height: 1,
              color: Colors.grey[400],
              thickness: 1,
            ),
            const SizedBox(
              height: 12.0,
            ),
            Text('Total: 120')
          ],
        ),
      ),
    );
  }
}
