import 'package:campus_ease/app/app.locator.dart';
import 'package:campus_ease/app/app.logger.dart';
import 'package:campus_ease/app/app.router.dart';

import 'package:flutter/foundation.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginService {
  final supabase = Supabase.instance.client;
  final logger = getLogger('LoginService');
  final _navigationService = locator<NavigationService>();

  Future<bool> isLoggedIn() async {
    final User? user = supabase.auth.currentUser;
    logger.i('User: $user');
    return user != null;
  }

  Future<AuthResponse> signUpNewUser(
      {required String email, required String password}) async {
    try {
      final AuthResponse res = await supabase.auth.signUp(
        email: email,
        password: password,
        data: {
          'confirmation_sent_at': DateTime.now().toIso8601String(),
        },
      );
      Fluttertoast.showToast(
          msg: "Account created Sucessfully", fontSize: 16.0);
      _navigationService.navigateToRegistrationDetailsView();
      return res;
    } catch (e) {
      Fluttertoast.showToast(msg: "$e", fontSize: 16.0);
      logger.e(e);
    }
    return AuthResponse();
  }

  Future<void> signOut() async {
    await supabase.auth.signOut();
  }

  Future<AuthResponse> signInWithEmail(
      {required email, required password}) async {
    try {
      final AuthResponse res = await supabase.auth
          .signInWithPassword(email: email, password: password);
      Fluttertoast.showToast(msg: "Logged in Sucessfully", fontSize: 16.0);
      _navigationService.navigateToStartupView();
    } catch (e) {
      Fluttertoast.showToast(msg: "$e", fontSize: 16.0);
      logger.e(e);
    }
    return AuthResponse();
  }

  logout() async {
    await supabase.auth.signOut();
    _navigationService.clearStackAndShow(Routes.homeView);
  }
}
