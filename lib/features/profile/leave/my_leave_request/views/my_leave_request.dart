import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seeroo_erp/features/profile/leave/controller/my_leave_request_controller.dart';
import 'package:seeroo_erp/features/profile/leave/my_leave_request/views/add_leave_request_form.dart';
import 'package:seeroo_erp/theme/colors/colors.dart';


class MyLeaveRequestPage extends StatelessWidget {
  final MyLeaveRequestController _controller = Get.put(MyLeaveRequestController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Leave Request'),
      ),
      body: Center(
        child: Text('Leave Request List'),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.primaryBlue,
        foregroundColor: AppColor.whites,
        onPressed: () {
          Get.to(AddLeaveRequestForm());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
