import 'package:campus_ease/app/app.router.dart';
import 'package:campus_ease/links/asset_links.dart';
import 'package:campus_ease/models/Job.dart';
import 'package:campus_ease/models/Student.dart';
import 'package:campus_ease/services/JobData.dart';
import 'package:campus_ease/services/api_calls_service.dart';
import 'package:campus_ease/services/jobs_service.dart';
import 'package:campus_ease/services/registration_service.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AllJobsViewModel extends BaseViewModel {
  final _navigationService = NavigationService();
  final _registrationService = RegistrationService();
  final _jobsService = JobsService();
  String studentName = "Student";
  final _apiCallsService = ApiCallsService();
  String? jobsApplied;
  String? pendingApplications;
  String? upcomingJobs;
  JobData? jobData;

  Future<void> init() async {
    bool registrationStatus = await checkRegistration();

    if (registrationStatus) {
      Student student = await _apiCallsService.getStudentDetails();
      studentName = student.firstName;
      rebuildUi();
      await getJobsAndAnalytics();
    } else {
      Fluttertoast.showToast(msg: "Please register first");
      _navigationService.navigateToRegistrationDetailsView();
    }
  }

  Future<void> getJobsAndAnalytics() async {
    await getAnalyticsDetails();
    rebuildUi();
    jobData = await _jobsService.getJobs();
    rebuildUi();
  }

  Future<bool> checkRegistration() async {
    return await _registrationService.isRegistered();
  }

  Future<void> getAnalyticsDetails() async {
    Map<String, String> analyticsDetails =
        await _apiCallsService.getAnalyticsDetails();
    jobsApplied = analyticsDetails['jobsApplied'];
    pendingApplications = analyticsDetails['pendingApplications'];
    upcomingJobs = analyticsDetails['upcomingJobs'];
  }
}
