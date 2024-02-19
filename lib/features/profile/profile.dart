import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seeroo_erp/foundation/circle_image/circle_image.dart';
import 'package:seeroo_erp/foundation/profile_button_card/profile_button_card.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: CircleImage(assetname: 'login2.png', radius: 60)),
            Text("Sajish Kumar"),
            Text('Project Lead'),
            SizedBox(height: 16), // Add spacing between elements
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => ProfileButtonCard(),
              itemCount: 6,
            ),
            SizedBox(height: 20),
            TextButton(onPressed: (){}, child: Text('Logout'))
          ],
        ),
      ),
    );
  }
}
