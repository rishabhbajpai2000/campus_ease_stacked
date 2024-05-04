import 'dart:ffi';

import 'package:campus_ease/app/app.logger.dart';
import 'package:campus_ease/services/login_service.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:stacked/stacked.dart';
import 'package:campus_ease/app/app.locator.dart';
import 'package:campus_ease/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final LoginService _loginService = LoginService();
  final _logger = getLogger("StartupViewModel");
  Future runStartupLogic() async {
    await Future.delayed(const Duration(seconds: 3));
    // TODO: call that empty api here as well as in ccpd application.
    bool hasLoggedInUser = await _loginService.isLoggedIn();
    _logger.i("hasLoggedInUser: $hasLoggedInUser");
    hasLoggedInUser
        ? _navigationService.replaceWith(Routes.homeView)
        : _navigationService.replaceWith(Routes.initialWelcomScreenView);
  }
}
