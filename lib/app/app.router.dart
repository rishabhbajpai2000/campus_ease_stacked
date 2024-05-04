// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:campus_ease/models/Job.dart' as _i15;
import 'package:campus_ease/models/Student.dart' as _i14;
import 'package:campus_ease/ui/views/all_jobs/all_jobs_view.dart' as _i7;
import 'package:campus_ease/ui/views/announcements/announcements_view.dart'
    as _i8;
import 'package:campus_ease/ui/views/applied_jobs/applied_jobs_view.dart'
    as _i12;
import 'package:campus_ease/ui/views/home/home_view.dart' as _i2;
import 'package:campus_ease/ui/views/initial_welcom_screen/initial_welcom_screen_view.dart'
    as _i5;
import 'package:campus_ease/ui/views/job_details_view/job_details_view_view.dart'
    as _i11;
import 'package:campus_ease/ui/views/profile/profile_view.dart' as _i9;
import 'package:campus_ease/ui/views/registration_details/registration_details_view.dart'
    as _i10;
import 'package:campus_ease/ui/views/sign_up/sign_up_view.dart' as _i6;
import 'package:campus_ease/ui/views/signin/signin_view.dart' as _i4;
import 'package:campus_ease/ui/views/startup/startup_view.dart' as _i3;
import 'package:flutter/material.dart' as _i13;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i16;

class Routes {
  static const homeView = '/home-view';

  static const startupView = '/startup-view';

  static const signinView = '/signin-view';

  static const initialWelcomScreenView = '/initial-welcom-screen-view';

  static const signUpView = '/sign-up-view';

  static const allJobsView = '/all-jobs-view';

  static const announcementsView = '/announcements-view';

  static const profileView = '/profile-view';

  static const registrationDetailsView = '/registration-details-view';

  static const jobDetailsViewView = '/job-details-view-view';

  static const appliedJobsView = '/applied-jobs-view';

  static const all = <String>{
    homeView,
    startupView,
    signinView,
    initialWelcomScreenView,
    signUpView,
    allJobsView,
    announcementsView,
    profileView,
    registrationDetailsView,
    jobDetailsViewView,
    appliedJobsView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.homeView,
      page: _i2.HomeView,
    ),
    _i1.RouteDef(
      Routes.startupView,
      page: _i3.StartupView,
    ),
    _i1.RouteDef(
      Routes.signinView,
      page: _i4.SigninView,
    ),
    _i1.RouteDef(
      Routes.initialWelcomScreenView,
      page: _i5.InitialWelcomScreenView,
    ),
    _i1.RouteDef(
      Routes.signUpView,
      page: _i6.SignUpView,
    ),
    _i1.RouteDef(
      Routes.allJobsView,
      page: _i7.AllJobsView,
    ),
    _i1.RouteDef(
      Routes.announcementsView,
      page: _i8.AnnouncementsView,
    ),
    _i1.RouteDef(
      Routes.profileView,
      page: _i9.ProfileView,
    ),
    _i1.RouteDef(
      Routes.registrationDetailsView,
      page: _i10.RegistrationDetailsView,
    ),
    _i1.RouteDef(
      Routes.jobDetailsViewView,
      page: _i11.JobDetailsViewView,
    ),
    _i1.RouteDef(
      Routes.appliedJobsView,
      page: _i12.AppliedJobsView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i13.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
      );
    },
    _i3.StartupView: (data) {
      return _i13.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.StartupView(),
        settings: data,
      );
    },
    _i4.SigninView: (data) {
      return _i13.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.SigninView(),
        settings: data,
      );
    },
    _i5.InitialWelcomScreenView: (data) {
      return _i13.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.InitialWelcomScreenView(),
        settings: data,
      );
    },
    _i6.SignUpView: (data) {
      return _i13.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.SignUpView(),
        settings: data,
      );
    },
    _i7.AllJobsView: (data) {
      return _i13.MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.AllJobsView(),
        settings: data,
      );
    },
    _i8.AnnouncementsView: (data) {
      return _i13.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.AnnouncementsView(),
        settings: data,
      );
    },
    _i9.ProfileView: (data) {
      return _i13.MaterialPageRoute<dynamic>(
        builder: (context) => const _i9.ProfileView(),
        settings: data,
      );
    },
    _i10.RegistrationDetailsView: (data) {
      final args = data.getArgs<RegistrationDetailsViewArguments>(
        orElse: () => const RegistrationDetailsViewArguments(),
      );
      return _i13.MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i10.RegistrationDetailsView(key: args.key, student: args.student),
        settings: data,
      );
    },
    _i11.JobDetailsViewView: (data) {
      final args = data.getArgs<JobDetailsViewViewArguments>(nullOk: false);
      return _i13.MaterialPageRoute<dynamic>(
        builder: (context) => _i11.JobDetailsViewView(
            key: args.key,
            job: args.job,
            showApplyButton: args.showApplyButton),
        settings: data,
      );
    },
    _i12.AppliedJobsView: (data) {
      return _i13.MaterialPageRoute<dynamic>(
        builder: (context) => const _i12.AppliedJobsView(),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class RegistrationDetailsViewArguments {
  const RegistrationDetailsViewArguments({
    this.key,
    this.student,
  });

  final _i13.Key? key;

  final _i14.Student? student;

  @override
  String toString() {
    return '{"key": "$key", "student": "$student"}';
  }

  @override
  bool operator ==(covariant RegistrationDetailsViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.student == student;
  }

  @override
  int get hashCode {
    return key.hashCode ^ student.hashCode;
  }
}

class JobDetailsViewViewArguments {
  const JobDetailsViewViewArguments({
    this.key,
    required this.job,
    required this.showApplyButton,
  });

  final _i13.Key? key;

  final _i15.Job job;

  final bool showApplyButton;

  @override
  String toString() {
    return '{"key": "$key", "job": "$job", "showApplyButton": "$showApplyButton"}';
  }

  @override
  bool operator ==(covariant JobDetailsViewViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.job == job &&
        other.showApplyButton == showApplyButton;
  }

  @override
  int get hashCode {
    return key.hashCode ^ job.hashCode ^ showApplyButton.hashCode;
  }
}

extension NavigatorStateExtension on _i16.NavigationService {
  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSigninView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.signinView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToInitialWelcomScreenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.initialWelcomScreenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSignUpView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.signUpView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAllJobsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.allJobsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAnnouncementsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.announcementsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.profileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToRegistrationDetailsView({
    _i13.Key? key,
    _i14.Student? student,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.registrationDetailsView,
        arguments: RegistrationDetailsViewArguments(key: key, student: student),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToJobDetailsViewView({
    _i13.Key? key,
    required _i15.Job job,
    required bool showApplyButton,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.jobDetailsViewView,
        arguments: JobDetailsViewViewArguments(
            key: key, job: job, showApplyButton: showApplyButton),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAppliedJobsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.appliedJobsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSigninView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.signinView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithInitialWelcomScreenView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.initialWelcomScreenView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSignUpView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.signUpView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAllJobsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.allJobsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAnnouncementsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.announcementsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.profileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithRegistrationDetailsView({
    _i13.Key? key,
    _i14.Student? student,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.registrationDetailsView,
        arguments: RegistrationDetailsViewArguments(key: key, student: student),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithJobDetailsViewView({
    _i13.Key? key,
    required _i15.Job job,
    required bool showApplyButton,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.jobDetailsViewView,
        arguments: JobDetailsViewViewArguments(
            key: key, job: job, showApplyButton: showApplyButton),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAppliedJobsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.appliedJobsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
