import 'package:campus_ease/app/app.logger.dart';
import 'package:campus_ease/services/registration_service.dart';
import 'package:campus_ease/ui/views/registration_details/registration_details_view.form.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:stacked/stacked.dart';

class RegistrationDetailsViewModel extends FormViewModel {
  String? selectedBranch;

  var formKey = GlobalKey<FormState>();
  final _logger = getLogger("RegistrationDetailsViewModel");
  final _registrationService = RegistrationService();
  void skipRegistration() {}

  void updateBranch(String? newValue) {
    selectedBranch = newValue;
    rebuildUi();
  }

  Future<void> submit() async {
    if (formKey.currentState!.validate()) {
      // branch check is required because it is not a form field
      if (selectedBranch == null) {
        Fluttertoast.showToast(msg: "Please select a branch");
        return;
      }
      _logger.i('''
                    Form is valid First Name: $firstNameValue
                    Last Name: $lastNameValue
                    Email: $collegeEmailValue
                    Roll Number: $universityRollNumberValue
                    Registration Number: $collegeRegistrationNumberValue
                    SGPA: $sgpaValue
                    Percentage: $percentageValue
                    Branch: $selectedBranch 
                ''');
      await _registrationService.upsertRegistrationDetails(
        firstName: firstNameValue!,
        lastName: lastNameValue!,
        collegeEmail: collegeEmailValue!,
        universityRollNumber: universityRollNumberValue!,
        collegeRegistrationNumber: collegeRegistrationNumberValue!,
        sgpa: sgpaValue!,
        percentage: percentageValue!,
        branch: selectedBranch!,
      );
    } else {
      _logger.i("Form is invalid");
      Fluttertoast.showToast(msg: "Please fill all the fields");
    }
  }
}

class RegistrationDetailsValidators {
  static String? validateFirstName(String? value) {
    if (value == null || value.isEmpty) {
      return 'First Name is required';
    }
    return null;
  }

  static String? validateLastName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Last Name is required';
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }
    return null;
  }

  static String? validateRollNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Roll Number is required';
    }
    return null;
  }

  static String? validateRegistrationNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Registration Number is required';
    }
    return null;
  }

  static String? validateSGPA(String? value) {
    if (value == null || value.isEmpty) {
      return 'SGPA is required';
    }
    return null;
  }

  static String? validatePercentage(String? value) {
    if (value == null || value.isEmpty) {
      return 'Percentage is required';
    }
    return null;
  }
}
