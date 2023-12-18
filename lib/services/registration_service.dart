import 'package:campus_ease/app/app.locator.dart';
import 'package:campus_ease/app/app.logger.dart';
import 'package:campus_ease/app/app.router.dart';
import 'package:campus_ease/services/api_calls_service.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class RegistrationService {
  final _apiCallService = locator<ApiCallsService>();
  final _logger = getLogger("RegistrationService");
  final _navigatorService = locator<NavigationService>();
  final User user = Supabase.instance.client.auth.currentUser!;
  Future<void> upsertRegistrationDetails(
      {required String firstName,
      required String lastName,
      required String collegeEmail,
      required String universityRollNumber,
      required String collegeRegistrationNumber,
      required String sgpa,
      required String percentage,
      required String branch}) async {
    String branchCode = getBranchCode(branch);
    String userId = user.id;
    int status = await _apiCallService.upsertRegistrationDetails(
        firstName: firstName,
        lastName: lastName,
        collegeEmail: collegeEmail,
        universityRollNumber: universityRollNumber,
        collegeRegistrationNumber: collegeRegistrationNumber,
        sgpa: sgpa,
        percentage: percentage,
        branch: branchCode,
        userId: userId);

    if (status == 200) {
      Fluttertoast.showToast(
          msg: "Registration details successfully sent to the server");
      _navigatorService.navigateToHomeView();
    } else {
      Fluttertoast.showToast(
          msg: "Error sending registration details to the server");
    }
  }

  String getBranchCode(String branch) {
    if (branch == 'Computer Science') {
      return 'CS';
    } else if (branch == 'Information Technology') {
      return 'IT';
    } else if (branch == 'Electrical Engineering') {
      return 'EE';
    } else if (branch == 'Electronics and Communication') {
      return 'EC';
    } else if (branch == 'Mechanical Engineering') {
      return 'ME';
    } else if (branch == 'Civil Engineering') {
      return 'CE';
    } else {
      return '';
    }
  }

  Future<bool> isRegistered() async {
    String userId = user.id;
    bool status = await _apiCallService.isRegistered(userId: userId);
    return status;
  }
}
