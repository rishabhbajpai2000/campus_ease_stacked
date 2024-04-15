import 'package:campus_ease/app/app.logger.dart';
import 'package:campus_ease/app/app.router.dart';
import 'package:campus_ease/services/login_service.dart';
import 'package:campus_ease/ui/views/signin/signin_view.form.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SigninViewModel extends FormViewModel {
  final _loginService = LoginService();
  bool processing = false;

  final formKey = GlobalKey<FormState>();
  final _logger = getLogger("SigninViewModel");
  final _navigationService = NavigationService();

  Future<void> logIn() async {
    if (formKey.currentState!.validate()) {
      _logger.i("Form is valid");
      await _loginService.signInWithEmail(
          email: emailValue!, password: passwordValue!);
    } else {
      _logger.i("Form is invalid");
      Fluttertoast.showToast(
          msg: "Please fill the details correctly", fontSize: 16.0);
    }
  }

  void navigateToSignUpView() {
    _navigationService.navigateToSignUpView();
  }

  void navigateBack() {
    _navigationService.back();
  }

  void forgotPassword() {
    Fluttertoast.showToast(msg: "Coming Soon!");
  }
}

class SignInValidators {
  static String? emailValidator(String? value) {
    if (value!.isEmpty) {
      return "Email cannot be empty";
    }
    if (!value.contains('@')) {
      return "Email is invalid";
    }
    return null;
  }

  static String? passwordValidator(String? value) {
    if (value!.isEmpty) {
      return "Password cannot be empty";
    }
    if (value.length < 6) {
      return "Password must be at least 6 characters long";
    }
    return null;
  }
}
