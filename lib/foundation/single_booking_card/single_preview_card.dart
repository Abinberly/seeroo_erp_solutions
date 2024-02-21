import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SinglePreviewCard extends StatefulWidget {
  const SinglePreviewCard({super.key});

  @override
  State<SinglePreviewCard> createState() => _SinglePreviewCardState();
}

class _SinglePreviewCardState extends State<SinglePreviewCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columns: const <DataColumn>[
                DataColumn(label: Text('Meals')),
                DataColumn(label: Text('Food Item')),
                DataColumn(label: Text('Amount')),
              ],
              rows: const <DataRow>[
                DataRow(cells: <DataCell>[
                  DataCell(Text('Breakfast')),
                  DataCell(Text('Idli/Sambar')),
                  DataCell(Text('30')),
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Text('Lunch')),
                  DataCell(Text('Meals/Fish')),
                  DataCell(Text('60')),
                ]),
                DataRow(cells: <DataCell>[
                  DataCell(Text('Dinner')),
                  DataCell(Text('Kanji')),
                  DataCell(Text('30')),
                ]),
              ],
            ),
          ),
          const SizedBox(height: 12.0),
          Divider(
            height: 1,
            color: Colors.grey[400],
            thickness: 1,
          ),
          const SizedBox(height: 12.0),
          const Align(
            alignment: Alignment.centerRight,
            child: Text(
              'Total: 120',
              textAlign: TextAlign.end,
            ),
          ),
          const SizedBox(height: 12.0),
        ],
      ),
    );
  }
}
