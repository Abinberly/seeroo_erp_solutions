import 'package:flutter/material.dart';
import '../../theme/colors/colors.dart';

class SPSolidButton extends StatelessWidget {
  const SPSolidButton({super.key, required this.btntext, required this.onpressed});
  final String btntext;
  final Function() onpressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: double.maxFinite,
      child: ElevatedButton(
          onPressed: onpressed,
          style:  ButtonStyle(
              backgroundColor:const MaterialStatePropertyAll(AppColor.primaryBlue), shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ), ),
          child: Text(btntext,
              textAlign: TextAlign.center,
              style: const TextStyle(color: AppColor.whites))),
    );
  }
}
