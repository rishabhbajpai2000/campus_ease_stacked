import 'package:campus_ease/app/app.locator.dart';
import 'package:campus_ease/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class InitialWelcomScreenViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  void navigateToSignInView() {
    _navigationService.navigateToSigninView();
  }

  void navigateToSignUpView() {
    _navigationService.navigateToSignUpView();
  }
}
