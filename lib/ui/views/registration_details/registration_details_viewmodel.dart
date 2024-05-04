import 'package:campus_ease/app/app.logger.dart';
import 'package:campus_ease/models/Student.dart';
import 'package:campus_ease/services/registration_service.dart';
import 'package:campus_ease/services/upload_doc_service.dart';
import 'package:campus_ease/ui/views/registration_details/registration_details_view.form.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';

class RegistrationDetailsViewModel extends FormViewModel {
  String? selectedBranch;
  final _uploadDocService = UploadDocService();
  var formKey = GlobalKey<FormState>();
  final _logger = getLogger("RegistrationDetailsViewModel");
  final _registrationService = RegistrationService();
  final ImagePicker _picker = ImagePicker();
  String? imageUrl;
  bool imageProcessing = false;

  void updateBranch(String? newValue) {
    selectedBranch = newValue;
    rebuildUi();
  }

  Future<void> submit() async {
    setBusy(true);
    if (formKey.currentState!.validate()) {
      // branch check is required because it is not a form field
      if (selectedBranch == null) {
        Fluttertoast.showToast(msg: "Please select a branch");
        setBusy(false);
        return;
      }
      if (imageUrl == null) {
        Fluttertoast.showToast(msg: "Please upload an image");
        setBusy(false);
        return;
      }
      _logger.i(
          ' Form is valid First Name: $firstNameValue Last Name: $lastNameValue Email: $collegeEmailValue Roll Number: $universityRollNumberValue Registration Number: $collegeRegistrationNumberValue SGPA: $sgpaValue Percentage: $percentageValue Branch: $selectedBranch Image Url: $imageUrl ');
      await _registrationService.upsertRegistrationDetails(
        firstName: firstNameValue!,
        lastName: lastNameValue!,
        collegeEmail: collegeEmailValue!,
        universityRollNumber: universityRollNumberValue!,
        collegeRegistrationNumber: collegeRegistrationNumberValue!,
        sgpa: sgpaValue!,
        percentage: percentageValue!,
        branch: selectedBranch!,
        imageUrl: imageUrl!,
      );
    } else {
      _logger.i("Form is invalid");
      Fluttertoast.showToast(msg: "Please fill all the fields");
    }
    setBusy(false);
    return;
  }

  // this function is responsible for uploading the image to the storage
  Future<void> getImage() async {
    try {
      // picking up the image.
      final image = await _picker.pickImage(source: ImageSource.gallery);
      if (image == null) {
        Fluttertoast.showToast(msg: "No Image Selected");
        return;
      }
      // getting the extension of the image
      final imageExtension = image.path.split('.').last;

      // this will return the path of the image.
      String imagePath =
          await _uploadDocService.uploadImage(image, imageExtension);

      // this will return the url of the image
      imageUrl = _uploadDocService.getImageUrl(imagePath);
      rebuildUi();
    } catch (e) {
      _logger.e(e);
      Fluttertoast.showToast(msg: "Error in uploading image. Please try again");
      rebuildUi();
    }
  }

  void init({Student? student}) {
    if (student != null) {
      firstNameValue = student.firstName;
      lastNameValue = student.lastName;
      collegeEmailValue = student.email;
      universityRollNumberValue = student.rollNumber;
      collegeRegistrationNumberValue = student.collegeAdmissionNumber;
      sgpaValue = student.sgpa;
      percentageValue = student.percentage;
      imageUrl = student.imageUrl;
    }
    rebuildUi();
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
