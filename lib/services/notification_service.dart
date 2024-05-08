import 'package:campus_ease/app/app.locator.dart';
import 'package:campus_ease/app/app.logger.dart';
import 'package:campus_ease/app/app.router.dart';
import 'package:campus_ease/models/Job.dart';
import 'package:campus_ease/services/api_calls_service.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class NotificationService {
  final _logger = getLogger("NotificationService");
  Future<void> initOneSignal() async {
    //Remove this method to stop OneSignal Debugging
    OneSignal.Debug.setLogLevel(OSLogLevel.verbose);
    OneSignal.initialize("1be38fba-04b1-4b93-a3c6-7656329481f3");
    OneSignal.Notifications.requestPermission(true);
    final userId = Supabase.instance.client.auth.currentUser?.id;
    await OneSignal.login(userId!);
    notificationHandlers();
  }

  void notificationHandlers() {
    OneSignal.Notifications.addClickListener((event) async {
      final jobId = event.notification.additionalData?["jobId"];
      _logger.i("Notification clicked---------> $jobId");
      await notificationClickNavigation(
          route: event.notification.additionalData?["route"],
          jobId: jobId.toString());
    });
  }

  Future<void> notificationClickNavigation(
      {required String route, required String jobId}) async {
    final apiCallService = locator<ApiCallsService>();
    final Job jobData = await apiCallService.getJobDetails(jobId: jobId);
    if (route == "job-details") {
      //Navigate to job details page
      await StackedService.navigatorKey?.currentState?.pushNamed(
          Routes.jobDetailsViewView,
          arguments:
              JobDetailsViewViewArguments(job: jobData, showApplyButton: true));
    }
  }
}
