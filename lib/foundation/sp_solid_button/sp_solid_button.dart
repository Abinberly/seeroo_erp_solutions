import 'package:flutter/material.dart';
import '../../theme/colors/colors.dart';

class SPSolidButton extends StatelessWidget {
  const SPSolidButton({super.key, required this.btntext, required this.onpressed, required this.btnwidth});
  final String btntext;
<<<<<<< HEAD
=======
  final double btnwidth;
>>>>>>> 3aa9604ca70dc6ff5dc3b11bf51888dc98a10c02
  final Function() onpressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
<<<<<<< HEAD
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
=======
      height: 50,
      width: btnwidth,
      child: ButtonTheme(
        child: ElevatedButton(
            onPressed: onpressed,
            style:  ButtonStyle(
                backgroundColor:const MaterialStatePropertyAll(AppColor.primaryBlue), shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            ), ),
            child: Text(btntext,
                textAlign: TextAlign.center,
                style: const TextStyle(color: AppColor.whites))),
      ),
>>>>>>> 3aa9604ca70dc6ff5dc3b11bf51888dc98a10c02
    );
  }
}
