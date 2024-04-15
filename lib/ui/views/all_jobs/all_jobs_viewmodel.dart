import 'package:campus_ease/app/app.router.dart';
import 'package:campus_ease/models/Job.dart';
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
  // Generating Some sample data for the UI
  JobData? jobData = JobData(filled: [
    Job(
        companyName: "TCS",
        jobDescription: "JD",
        jobProfile: "UI/UX Designer",
        expCTC: "5",
        regLink: "www.google.com",
        file: "www.abes.com",
        startDate: "24/12/2001",
        endDate: "25/12/2001",
        departmentId: "EN",
        jobLocation: 'GurGaon',
        webSite: 'www.tcs.com',
        eligibleBranches: 'CSE, IT')
  ], unfilled: [
    Job(
        companyName: "Infosys",
        jobDescription: "JD",
        jobProfile: "SoftWare Development Engineer",
        expCTC: "5",
        regLink: "www.google.com",
        file: "www.abes.com",
        startDate: "24/12/2001",
        endDate: "25/12/2001",
        departmentId: "EN",
        jobLocation: 'GurGaon',
        webSite: 'www.tcs.com',
        eligibleBranches: 'CSE, IT')
  ]);
  void getJobs() async {
    // here first we will need to check if the student has registered or not.
    bool registrationStatus = await checkRegistration();

    if (registrationStatus) {
      // if the student has registered then we will show the jobs.
      Fluttertoast.showToast(msg: "You are registered");
      // jobData = await _jobsService.getJobs(); // TODO: Uncomment this line after implementing the getJobs method in the JobsService class.
      // rebuildUi();
    } else {
      // if the student has not registered then we will show a dialog box asking the student to register first.
      Fluttertoast.showToast(msg: "Please register first");
      _navigationService.navigateToRegistrationDetailsView();
    }
  }

  Future<bool> checkRegistration() async {
    return await _registrationService.isRegistered();
  }

  void navigateToJobDetails(Job job) {
    _navigationService.navigateToJobDetailsViewView(job: job);
  }
}
