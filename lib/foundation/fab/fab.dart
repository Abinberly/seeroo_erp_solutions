import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FABButton extends StatelessWidget {
  const FABButton({Key? key, required this.navigationLoc});

  final String navigationLoc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final routeName = navigationLoc.replaceAll("/", "");
          Get.toNamed("/$routeName");
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
