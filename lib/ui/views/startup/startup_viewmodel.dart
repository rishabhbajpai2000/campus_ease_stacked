import 'dart:ffi';

import 'package:campus_ease/app/app.logger.dart';
import 'package:campus_ease/services/login_service.dart';
import 'package:stacked/stacked.dart';
import 'package:campus_ease/app/app.locator.dart';
import 'package:campus_ease/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final LoginService _loginService = LoginService();
  final _logger = getLogger("StartupViewModel");
  // Place anything here that needs to happen before we get into the application
  Future runStartupLogic() async {
    await Future.delayed(const Duration(seconds: 3));

    bool hasLoggedInUser = await _loginService.isLoggedIn();
    _logger.i("hasLoggedInUser: $hasLoggedInUser");
    hasLoggedInUser
        ? _navigationService.replaceWith(Routes.homeView)
        : _navigationService.replaceWith(Routes.initialWelcomScreenView);
  }
}
