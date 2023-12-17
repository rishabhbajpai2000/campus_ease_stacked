import 'package:campus_ease/app/app.bottomsheets.dart';
import 'package:campus_ease/app/app.dialogs.dart';
import 'package:campus_ease/app/app.locator.dart';
import 'package:campus_ease/app/app.router.dart';
import 'package:campus_ease/services/login_service.dart';
import 'package:campus_ease/ui/common/app_strings.dart';
import 'package:campus_ease/ui/views/all_jobs/all_jobs_view.dart';
import 'package:campus_ease/ui/views/announcements/announcements_view.dart';
import 'package:campus_ease/ui/views/profile/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  List<Widget> views = [AllJobsView(), AnnouncementsView(), ProfileView()];
  int currentViewIndex = 0;
  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();
  final _loginService = locator<LoginService>();

  String get counterLabel => 'Counter is: $_counter';

  int _counter = 0;

  void incrementCounter() {
    _counter++;
    rebuildUi();
  }

  void showDialog() {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Stacked Rocks!',
      description: 'Give stacked $_counter stars on Github',
    );
  }

  void showBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.notice,
      title: ksHomeBottomSheetTitle,
      description: ksHomeBottomSheetDescription,
    );
  }

  logout() async {
    await _loginService.logout();
    _navigationService.clearStackAndShow(Routes.initialWelcomScreenView);
  }

  void onDestinationSelected(int index) {
    currentViewIndex = index;
    rebuildUi();
  }

  void goToRegistration() {
    _navigationService.navigateTo(Routes.registrationDetailsView);
  }
}
