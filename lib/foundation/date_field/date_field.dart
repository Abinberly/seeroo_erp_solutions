import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../theme/colors/colors.dart';

class DateField extends StatefulWidget {
  const DateField({super.key, required this.titleDate});
  final String titleDate;

  @override
  State<DateField> createState() => _DateFieldState();
}

class _DateFieldState extends State<DateField> {
  TextEditingController dobController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Material(
      color: AppColor.whites,
      child: TextFormField(
        keyboardType: TextInputType.datetime,
        controller: dobController,
        decoration:  InputDecoration(
            border: OutlineInputBorder(), label: Text(widget.titleDate)),
        onTap: () async {
          DateTime? selectedDate = await showDatePicker(
              context: context,
              firstDate: DateTime.now(),
              initialDate: DateTime.now(),
              lastDate: DateTime.now().add(const Duration(days: 365 * 1)));
          selectedDate ??= DateTime.now();
          final dateFormat = DateFormat('dd/MM/yyyy');
          dobController.text = dateFormat.format(selectedDate);
        },
      ),
    );
  }
}
