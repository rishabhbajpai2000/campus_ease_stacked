import 'package:campus_ease/app/app.locator.dart';
import 'package:campus_ease/services/JobData.dart';
import 'package:campus_ease/services/jobs_service.dart';
import 'package:stacked/stacked.dart';

class AppliedJobsViewModel extends BaseViewModel {
  JobData? jobData;
  final _jobService = locator<JobsService>();
  Future<void> init() async {
    setBusy(true);
    jobData = await _jobService.getJobs();
    setBusy(false);
  }
}
