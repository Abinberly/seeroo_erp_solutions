import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seeroo_erp/features/profile/leave/my_leave_request/controller/add_leave_request_controller.dart';
import 'package:seeroo_erp/foundation/date_field/date_field.dart';
import 'package:seeroo_erp/foundation/sp_solid_button/sp_solid_button.dart';

class AddLeaveRequestForm extends StatelessWidget {
  const AddLeaveRequestForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AddLeaveRequestController());

    return Scaffold(
      appBar: AppBar(
        title: Text('Add Leave Request'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Form(
              key: controller.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    controller: controller.nameController,
                    decoration: InputDecoration(
                      labelText: 'Leave Type',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Leave Type';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20), // Adjust spacing as needed
                  Row(
                    children: [
                      Expanded(
                        child: DateField(),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: DateField(),
                      ),
                    ],
                  ),
                  SizedBox(height: 20), // Adjust spacing as needed
                  TextFormField(
                    controller: controller.leaveReasonController,
                    decoration: InputDecoration(
                      labelText: 'Leave Reason',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter leave reason';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20), // Adjust spacing as needed
                  SPSolidButton(
                    btntext: 'Save',
                    onpressed: () => {controller.submitLeaveRequest()},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


