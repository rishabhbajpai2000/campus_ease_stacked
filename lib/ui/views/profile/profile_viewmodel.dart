import 'package:campus_ease/app/app.locator.dart';
import 'package:campus_ease/models/Student.dart';
import 'package:campus_ease/services/api_calls_service.dart';
import 'package:campus_ease/services/login_service.dart';
import 'package:stacked/stacked.dart';

class ProfileViewModel extends BaseViewModel {
  final _apiCalls = locator<ApiCallsService>();
  Student? student;

  void getProfileDetails() async {
    try {
      student = await _apiCalls.getStudentDetails();
    } catch (e) {
      student = const Student(
          userId: "Error Fetching Details",
          firstName: "Error Fetching Details",
          lastName: "Error Fetching Details",
          rollNumber: "Error Fetching Details",
          collegeAdmissionNumber: "Error Fetching Details",
          email: "Error Fetching Details",
          branch: "Error Fetching Details",
          sgpa: "Error Fetching Details",
          percentage: "Error Fetching Details",
          collegeRegistrationNumber: "Error Fetching Details",
          imageUrl: null);
    }
    rebuildUi();
  }

  void logOut() async {
    final _loginService = locator<LoginService>();
    await _loginService.logout();
  }
}
