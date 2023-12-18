import 'package:campus_ease/app/app.router.dart';
import 'package:campus_ease/services/JobData.dart';
import 'package:campus_ease/services/jobs_service.dart';
import 'package:campus_ease/services/registration_service.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AllJobsViewModel extends BaseViewModel {
  final _dialogService = DialogService();
  final _navigationService = NavigationService();
  final _registrationService = RegistrationService();
  final JobsService _jobsService = JobsService();
  JobData? jobData;
  void getJobs() async {
    // here first we will need to check if the student has registered or not.
    bool registrationStatus = await checkRegistration();

    if (registrationStatus) {
      // if the student has registered then we will show the jobs.
      Fluttertoast.showToast(msg: "You are registered");
      jobData = await _jobsService.getJobs();
      rebuildUi();
    } else {
      // if the student has not registered then we will show a dialog box asking the student to register first.
      Fluttertoast.showToast(msg: "Please register first");
      _navigationService.navigateToRegistrationDetailsView();
    }
  }

  Future<bool> checkRegistration() async {
    return await _registrationService.isRegistered();
  }
}
