import 'package:campus_ease/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:campus_ease/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:campus_ease/ui/views/home/home_view.dart';
import 'package:campus_ease/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:campus_ease/services/login_service.dart';
import 'package:campus_ease/ui/views/signin/signin_view.dart';
import 'package:campus_ease/ui/views/initial_welcom_screen/initial_welcom_screen_view.dart';
import 'package:campus_ease/ui/views/sign_up/sign_up_view.dart';
import 'package:campus_ease/ui/views/all_jobs/all_jobs_view.dart';
import 'package:campus_ease/ui/views/announcements/announcements_view.dart';
import 'package:campus_ease/ui/views/profile/profile_view.dart';
import 'package:campus_ease/ui/views/registration_details/registration_details_view.dart';
import 'package:campus_ease/services/registration_service.dart';
import 'package:campus_ease/services/api_calls_service.dart';
// @stacked-import

@StackedApp(
  logger: StackedLogger(),
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: SigninView),
    MaterialRoute(page: InitialWelcomScreenView),
    MaterialRoute(page: SignUpView),
    MaterialRoute(page: AllJobsView),
    MaterialRoute(page: AnnouncementsView),
    MaterialRoute(page: ProfileView),
    MaterialRoute(page: RegistrationDetailsView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: LoginService),
    LazySingleton(classType: RegistrationService),
    LazySingleton(classType: ApiCallsService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
