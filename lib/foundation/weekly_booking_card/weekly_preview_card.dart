import 'package:flutter/material.dart';
import 'package:seeroo_erp/theme/colors/colors.dart';

class WeeklyPreviewCard extends StatefulWidget {
  const WeeklyPreviewCard({super.key});

  @override
  State<WeeklyPreviewCard> createState() => _WeeklyPreviewCardState();
}

class _WeeklyPreviewCardState extends State<WeeklyPreviewCard> {
      bool? _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Card(
        child: DataTable(
          columns: const <DataColumn>[
            DataColumn(
              label: Text('Date'),
            ),
            DataColumn(
              label: Text('Breakfast'),
            ),
            DataColumn(
              label: Text('Lunch'),
            ),
            DataColumn(
              label: Text('Dinner'),
            ),
            DataColumn(
              label: Text('Total Amount'),
            ),
          ],
          rows: <DataRow>[
            DataRow(
              cells: <DataCell>[
                DataCell(Text('01/Jul/2023')),
                DataCell(
                  Checkbox(
                    value: _isChecked,
                    onChanged: (bool? newValue) {
                      setState(() {
                        _isChecked = newValue ?? false;
                      });
                    },
                    activeColor: const Color.fromARGB(0, 255, 255, 255),
                    checkColor: Colors.green,
                  ),
                ),
                DataCell(Checkbox(
                    value: _isChecked,
                    onChanged: (bool? newValue) {
                      setState(() {
                        _isChecked = newValue ?? false;
                      });
                    },
                    activeColor: const Color.fromARGB(0, 255, 255, 255),
                    checkColor: Colors.green,
                  ),),
                DataCell(Checkbox(
                    value: _isChecked,
                    onChanged: (bool? newValue) {
                      setState(() {
                        _isChecked = newValue ?? false;
                      });
                    },
                    activeColor: const Color.fromARGB(0, 255, 255, 255),
                    checkColor: Colors.green,
                  ),),
                DataCell(Text('70.00')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('02/Jul/2023')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('60.00')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('03/Jul/2023')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('60.00')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('04/Jul/2023')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('80.00')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('Total')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text('270.00')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
