import 'package:campus_ease/app/app.router.dart';
import 'package:campus_ease/models/Job.dart';
import 'package:campus_ease/services/api_calls_service.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class JobDetailsViewViewModel extends BaseViewModel {
  final _apiCall = ApiCallsService();
  Future<void> applyForJob({required Job job}) async {
    setBusy(true);
    int statusCode = await _apiCall.applyForJob(jobId: job.id);
    setBusy(false);

    if (statusCode == 200) {
      Fluttertoast.showToast(msg: "Job successfully applied");
      NavigationService().clearStackAndShow(Routes.homeView);
    } else {
      Fluttertoast.showToast(msg: "Error applying for the job");
    }
  }


}
