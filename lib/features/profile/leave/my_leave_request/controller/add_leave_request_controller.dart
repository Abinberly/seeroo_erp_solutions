import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class AddLeaveRequestController extends GetxController {
  // Form key
  final formKey = GlobalKey<FormState>();

  // Text editing controllers
  final nameController = TextEditingController();
  final startDateController = TextEditingController();
  final endDateController = TextEditingController();
  final leaveReasonController = TextEditingController();

  // Validation logic
  bool validateForm() {
    if (formKey.currentState!.validate()) {
      return true;
    } else {
      return false;
    }
  }

  // Submit form
  void submitLeaveRequest() {
    if (validateForm()) {
      // Submit leave request to your backend or database
    } else {
      // Show error message
    }
  }

// Method to clear the form fields
  void clearForm() {
    nameController.clear();
    startDateController.clear();
    endDateController.clear();
    leaveReasonController.clear();
  }
}
