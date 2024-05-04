// Mocks generated by Mockito 5.4.3 from annotations
// in campus_ease/test/helpers/test_helpers.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i9;
import 'dart:ui' as _i10;

import 'package:campus_ease/models/Student.dart' as _i4;
import 'package:campus_ease/services/api_calls_service.dart' as _i13;
import 'package:campus_ease/services/JobData.dart' as _i5;
import 'package:campus_ease/services/jobs_service.dart' as _i14;
import 'package:campus_ease/services/login_service.dart' as _i11;
import 'package:campus_ease/services/registration_service.dart' as _i12;
import 'package:flutter/material.dart' as _i8;
import 'package:logger/src/logger.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i7;
import 'package:stacked_services/stacked_services.dart' as _i6;
import 'package:supabase_flutter/supabase_flutter.dart' as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeSupabaseClient_0 extends _i1.SmartFake
    implements _i2.SupabaseClient {
  _FakeSupabaseClient_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeLogger_1 extends _i1.SmartFake implements _i3.Logger {
  _FakeLogger_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeAuthResponse_2 extends _i1.SmartFake implements _i2.AuthResponse {
  _FakeAuthResponse_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeUser_3 extends _i1.SmartFake implements _i2.User {
  _FakeUser_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeStudent_4 extends _i1.SmartFake implements _i4.Student {
  _FakeStudent_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeJobData_5 extends _i1.SmartFake implements _i5.JobData {
  _FakeJobData_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [NavigationService].
///
/// See the documentation for Mockito's code generation for more information.
class MockNavigationService extends _i1.Mock implements _i6.NavigationService {
  @override
  String get previousRoute => (super.noSuchMethod(
        Invocation.getter(#previousRoute),
        returnValue: _i7.dummyValue<String>(
          this,
          Invocation.getter(#previousRoute),
        ),
        returnValueForMissingStub: _i7.dummyValue<String>(
          this,
          Invocation.getter(#previousRoute),
        ),
      ) as String);

  @override
  String get currentRoute => (super.noSuchMethod(
        Invocation.getter(#currentRoute),
        returnValue: _i7.dummyValue<String>(
          this,
          Invocation.getter(#currentRoute),
        ),
        returnValueForMissingStub: _i7.dummyValue<String>(
          this,
          Invocation.getter(#currentRoute),
        ),
      ) as String);

  @override
  _i8.GlobalKey<_i8.NavigatorState>? nestedNavigationKey(int? index) =>
      (super.noSuchMethod(
        Invocation.method(
          #nestedNavigationKey,
          [index],
        ),
        returnValueForMissingStub: null,
      ) as _i8.GlobalKey<_i8.NavigatorState>?);

  @override
  void config({
    bool? enableLog,
    bool? defaultPopGesture,
    bool? defaultOpaqueRoute,
    Duration? defaultDurationTransition,
    bool? defaultGlobalState,
    _i6.Transition? defaultTransitionStyle,
    String? defaultTransition,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #config,
          [],
          {
            #enableLog: enableLog,
            #defaultPopGesture: defaultPopGesture,
            #defaultOpaqueRoute: defaultOpaqueRoute,
            #defaultDurationTransition: defaultDurationTransition,
            #defaultGlobalState: defaultGlobalState,
            #defaultTransitionStyle: defaultTransitionStyle,
            #defaultTransition: defaultTransition,
          },
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i9.Future<T?>? navigateWithTransition<T>(
    _i8.Widget? page, {
    bool? opaque,
    String? transition = r'',
    Duration? duration,
    bool? popGesture,
    int? id,
    _i8.Curve? curve,
    bool? fullscreenDialog = false,
    bool? preventDuplicates = true,
    _i6.Transition? transitionClass,
    _i6.Transition? transitionStyle,
    String? routeName,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #navigateWithTransition,
          [page],
          {
            #opaque: opaque,
            #transition: transition,
            #duration: duration,
            #popGesture: popGesture,
            #id: id,
            #curve: curve,
            #fullscreenDialog: fullscreenDialog,
            #preventDuplicates: preventDuplicates,
            #transitionClass: transitionClass,
            #transitionStyle: transitionStyle,
            #routeName: routeName,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i9.Future<T?>?);

  @override
  _i9.Future<T?>? replaceWithTransition<T>(
    _i8.Widget? page, {
    bool? opaque,
    String? transition = r'',
    Duration? duration,
    bool? popGesture,
    int? id,
    _i8.Curve? curve,
    bool? fullscreenDialog = false,
    bool? preventDuplicates = true,
    _i6.Transition? transitionClass,
    _i6.Transition? transitionStyle,
    String? routeName,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #replaceWithTransition,
          [page],
          {
            #opaque: opaque,
            #transition: transition,
            #duration: duration,
            #popGesture: popGesture,
            #id: id,
            #curve: curve,
            #fullscreenDialog: fullscreenDialog,
            #preventDuplicates: preventDuplicates,
            #transitionClass: transitionClass,
            #transitionStyle: transitionStyle,
            #routeName: routeName,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i9.Future<T?>?);

  @override
  bool back<T>({
    dynamic result,
    int? id,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #back,
          [],
          {
            #result: result,
            #id: id,
          },
        ),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  void popUntil(
    _i8.RoutePredicate? predicate, {
    int? id,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #popUntil,
          [predicate],
          {#id: id},
        ),
        returnValueForMissingStub: null,
      );

  @override
  void popRepeated(int? popTimes) => super.noSuchMethod(
        Invocation.method(
          #popRepeated,
          [popTimes],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i9.Future<T?>? navigateTo<T>(
    String? routeName, {
    dynamic arguments,
    int? id,
    bool? preventDuplicates = true,
    Map<String, String>? parameters,
    _i8.RouteTransitionsBuilder? transition,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #navigateTo,
          [routeName],
          {
            #arguments: arguments,
            #id: id,
            #preventDuplicates: preventDuplicates,
            #parameters: parameters,
            #transition: transition,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i9.Future<T?>?);

  @override
  _i9.Future<T?>? navigateToView<T>(
    _i8.Widget? view, {
    dynamic arguments,
    int? id,
    bool? opaque,
    _i8.Curve? curve,
    Duration? duration,
    bool? fullscreenDialog = false,
    bool? popGesture,
    bool? preventDuplicates = true,
    _i6.Transition? transition,
    _i6.Transition? transitionStyle,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #navigateToView,
          [view],
          {
            #arguments: arguments,
            #id: id,
            #opaque: opaque,
            #curve: curve,
            #duration: duration,
            #fullscreenDialog: fullscreenDialog,
            #popGesture: popGesture,
            #preventDuplicates: preventDuplicates,
            #transition: transition,
            #transitionStyle: transitionStyle,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i9.Future<T?>?);

  @override
  _i9.Future<T?>? replaceWith<T>(
    String? routeName, {
    dynamic arguments,
    int? id,
    bool? preventDuplicates = true,
    Map<String, String>? parameters,
    _i8.RouteTransitionsBuilder? transition,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #replaceWith,
          [routeName],
          {
            #arguments: arguments,
            #id: id,
            #preventDuplicates: preventDuplicates,
            #parameters: parameters,
            #transition: transition,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i9.Future<T?>?);

  @override
  _i9.Future<T?>? clearStackAndShow<T>(
    String? routeName, {
    dynamic arguments,
    int? id,
    Map<String, String>? parameters,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #clearStackAndShow,
          [routeName],
          {
            #arguments: arguments,
            #id: id,
            #parameters: parameters,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i9.Future<T?>?);

  @override
  _i9.Future<T?>? clearStackAndShowView<T>(
    _i8.Widget? view, {
    dynamic arguments,
    int? id,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #clearStackAndShowView,
          [view],
          {
            #arguments: arguments,
            #id: id,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i9.Future<T?>?);

  @override
  _i9.Future<T?>? clearTillFirstAndShow<T>(
    String? routeName, {
    dynamic arguments,
    int? id,
    bool? preventDuplicates = true,
    Map<String, String>? parameters,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #clearTillFirstAndShow,
          [routeName],
          {
            #arguments: arguments,
            #id: id,
            #preventDuplicates: preventDuplicates,
            #parameters: parameters,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i9.Future<T?>?);

  @override
  _i9.Future<T?>? clearTillFirstAndShowView<T>(
    _i8.Widget? view, {
    dynamic arguments,
    int? id,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #clearTillFirstAndShowView,
          [view],
          {
            #arguments: arguments,
            #id: id,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i9.Future<T?>?);

  @override
  _i9.Future<T?>? pushNamedAndRemoveUntil<T>(
    String? routeName, {
    _i8.RoutePredicate? predicate,
    dynamic arguments,
    int? id,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #pushNamedAndRemoveUntil,
          [routeName],
          {
            #predicate: predicate,
            #arguments: arguments,
            #id: id,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i9.Future<T?>?);
}

/// A class which mocks [BottomSheetService].
///
/// See the documentation for Mockito's code generation for more information.
class MockBottomSheetService extends _i1.Mock
    implements _i6.BottomSheetService {
  @override
  void setCustomSheetBuilders(Map<dynamic, _i6.SheetBuilder>? builders) =>
      super.noSuchMethod(
        Invocation.method(
          #setCustomSheetBuilders,
          [builders],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i9.Future<_i6.SheetResponse<dynamic>?> showBottomSheet({
    required String? title,
    String? description,
    String? confirmButtonTitle = r'Ok',
    String? cancelButtonTitle,
    bool? enableDrag = true,
    bool? barrierDismissible = true,
    bool? isScrollControlled = false,
    Duration? exitBottomSheetDuration,
    Duration? enterBottomSheetDuration,
    bool? ignoreSafeArea,
    bool? useRootNavigator = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #showBottomSheet,
          [],
          {
            #title: title,
            #description: description,
            #confirmButtonTitle: confirmButtonTitle,
            #cancelButtonTitle: cancelButtonTitle,
            #enableDrag: enableDrag,
            #barrierDismissible: barrierDismissible,
            #isScrollControlled: isScrollControlled,
            #exitBottomSheetDuration: exitBottomSheetDuration,
            #enterBottomSheetDuration: enterBottomSheetDuration,
            #ignoreSafeArea: ignoreSafeArea,
            #useRootNavigator: useRootNavigator,
          },
        ),
        returnValue: _i9.Future<_i6.SheetResponse<dynamic>?>.value(),
        returnValueForMissingStub:
            _i9.Future<_i6.SheetResponse<dynamic>?>.value(),
      ) as _i9.Future<_i6.SheetResponse<dynamic>?>);

  @override
  _i9.Future<_i6.SheetResponse<T>?> showCustomSheet<T, R>({
    dynamic variant,
    String? title,
    String? description,
    bool? hasImage = false,
    String? imageUrl,
    bool? showIconInMainButton = false,
    String? mainButtonTitle,
    bool? showIconInSecondaryButton = false,
    String? secondaryButtonTitle,
    bool? showIconInAdditionalButton = false,
    String? additionalButtonTitle,
    bool? takesInput = false,
    _i10.Color? barrierColor = const _i10.Color(2315255808),
    bool? barrierDismissible = true,
    bool? isScrollControlled = false,
    String? barrierLabel = r'',
    dynamic customData,
    R? data,
    bool? enableDrag = true,
    Duration? exitBottomSheetDuration,
    Duration? enterBottomSheetDuration,
    bool? ignoreSafeArea,
    bool? useRootNavigator = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #showCustomSheet,
          [],
          {
            #variant: variant,
            #title: title,
            #description: description,
            #hasImage: hasImage,
            #imageUrl: imageUrl,
            #showIconInMainButton: showIconInMainButton,
            #mainButtonTitle: mainButtonTitle,
            #showIconInSecondaryButton: showIconInSecondaryButton,
            #secondaryButtonTitle: secondaryButtonTitle,
            #showIconInAdditionalButton: showIconInAdditionalButton,
            #additionalButtonTitle: additionalButtonTitle,
            #takesInput: takesInput,
            #barrierColor: barrierColor,
            #barrierDismissible: barrierDismissible,
            #isScrollControlled: isScrollControlled,
            #barrierLabel: barrierLabel,
            #customData: customData,
            #data: data,
            #enableDrag: enableDrag,
            #exitBottomSheetDuration: exitBottomSheetDuration,
            #enterBottomSheetDuration: enterBottomSheetDuration,
            #ignoreSafeArea: ignoreSafeArea,
            #useRootNavigator: useRootNavigator,
          },
        ),
        returnValue: _i9.Future<_i6.SheetResponse<T>?>.value(),
        returnValueForMissingStub: _i9.Future<_i6.SheetResponse<T>?>.value(),
      ) as _i9.Future<_i6.SheetResponse<T>?>);

  @override
  void completeSheet(_i6.SheetResponse<dynamic>? response) =>
      super.noSuchMethod(
        Invocation.method(
          #completeSheet,
          [response],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [DialogService].
///
/// See the documentation for Mockito's code generation for more information.
class MockDialogService extends _i1.Mock implements _i6.DialogService {
  @override
  void registerCustomDialogBuilders(
          Map<dynamic, _i6.DialogBuilder>? builders) =>
      super.noSuchMethod(
        Invocation.method(
          #registerCustomDialogBuilders,
          [builders],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void registerCustomDialogBuilder({
    required dynamic variant,
    required _i8.Widget Function(
      _i8.BuildContext,
      _i6.DialogRequest<dynamic>,
      dynamic Function(_i6.DialogResponse<dynamic>),
    )? builder,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #registerCustomDialogBuilder,
          [],
          {
            #variant: variant,
            #builder: builder,
          },
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i9.Future<_i6.DialogResponse<dynamic>?> showDialog({
    String? title,
    String? description,
    String? cancelTitle,
    _i10.Color? cancelTitleColor,
    String? buttonTitle = r'Ok',
    _i10.Color? buttonTitleColor,
    bool? barrierDismissible = false,
    _i6.DialogPlatform? dialogPlatform,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #showDialog,
          [],
          {
            #title: title,
            #description: description,
            #cancelTitle: cancelTitle,
            #cancelTitleColor: cancelTitleColor,
            #buttonTitle: buttonTitle,
            #buttonTitleColor: buttonTitleColor,
            #barrierDismissible: barrierDismissible,
            #dialogPlatform: dialogPlatform,
          },
        ),
        returnValue: _i9.Future<_i6.DialogResponse<dynamic>?>.value(),
        returnValueForMissingStub:
            _i9.Future<_i6.DialogResponse<dynamic>?>.value(),
      ) as _i9.Future<_i6.DialogResponse<dynamic>?>);

  @override
  _i9.Future<_i6.DialogResponse<T>?> showCustomDialog<T, R>({
    dynamic variant,
    String? title,
    String? description,
    bool? hasImage = false,
    String? imageUrl,
    bool? showIconInMainButton = false,
    String? mainButtonTitle,
    bool? showIconInSecondaryButton = false,
    String? secondaryButtonTitle,
    bool? showIconInAdditionalButton = false,
    String? additionalButtonTitle,
    bool? takesInput = false,
    _i10.Color? barrierColor = const _i10.Color(2315255808),
    bool? barrierDismissible = false,
    String? barrierLabel = r'',
    bool? useSafeArea = true,
    dynamic customData,
    R? data,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #showCustomDialog,
          [],
          {
            #variant: variant,
            #title: title,
            #description: description,
            #hasImage: hasImage,
            #imageUrl: imageUrl,
            #showIconInMainButton: showIconInMainButton,
            #mainButtonTitle: mainButtonTitle,
            #showIconInSecondaryButton: showIconInSecondaryButton,
            #secondaryButtonTitle: secondaryButtonTitle,
            #showIconInAdditionalButton: showIconInAdditionalButton,
            #additionalButtonTitle: additionalButtonTitle,
            #takesInput: takesInput,
            #barrierColor: barrierColor,
            #barrierDismissible: barrierDismissible,
            #barrierLabel: barrierLabel,
            #useSafeArea: useSafeArea,
            #customData: customData,
            #data: data,
          },
        ),
        returnValue: _i9.Future<_i6.DialogResponse<T>?>.value(),
        returnValueForMissingStub: _i9.Future<_i6.DialogResponse<T>?>.value(),
      ) as _i9.Future<_i6.DialogResponse<T>?>);

  @override
  _i9.Future<_i6.DialogResponse<dynamic>?> showConfirmationDialog({
    String? title,
    String? description,
    String? cancelTitle = r'Cancel',
    _i10.Color? cancelTitleColor,
    String? confirmationTitle = r'Ok',
    _i10.Color? confirmationTitleColor,
    bool? barrierDismissible = false,
    _i6.DialogPlatform? dialogPlatform,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #showConfirmationDialog,
          [],
          {
            #title: title,
            #description: description,
            #cancelTitle: cancelTitle,
            #cancelTitleColor: cancelTitleColor,
            #confirmationTitle: confirmationTitle,
            #confirmationTitleColor: confirmationTitleColor,
            #barrierDismissible: barrierDismissible,
            #dialogPlatform: dialogPlatform,
          },
        ),
        returnValue: _i9.Future<_i6.DialogResponse<dynamic>?>.value(),
        returnValueForMissingStub:
            _i9.Future<_i6.DialogResponse<dynamic>?>.value(),
      ) as _i9.Future<_i6.DialogResponse<dynamic>?>);

  @override
  void completeDialog(_i6.DialogResponse<dynamic>? response) =>
      super.noSuchMethod(
        Invocation.method(
          #completeDialog,
          [response],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [LoginService].
///
/// See the documentation for Mockito's code generation for more information.
class MockLoginService extends _i1.Mock implements _i11.LoginService {
  @override
  _i2.SupabaseClient get supabase => (super.noSuchMethod(
        Invocation.getter(#supabase),
        returnValue: _FakeSupabaseClient_0(
          this,
          Invocation.getter(#supabase),
        ),
        returnValueForMissingStub: _FakeSupabaseClient_0(
          this,
          Invocation.getter(#supabase),
        ),
      ) as _i2.SupabaseClient);

  @override
  _i3.Logger get logger => (super.noSuchMethod(
        Invocation.getter(#logger),
        returnValue: _FakeLogger_1(
          this,
          Invocation.getter(#logger),
        ),
        returnValueForMissingStub: _FakeLogger_1(
          this,
          Invocation.getter(#logger),
        ),
      ) as _i3.Logger);

  @override
  _i9.Future<bool> isLoggedIn() => (super.noSuchMethod(
        Invocation.method(
          #isLoggedIn,
          [],
        ),
        returnValue: _i9.Future<bool>.value(false),
        returnValueForMissingStub: _i9.Future<bool>.value(false),
      ) as _i9.Future<bool>);

  @override
  _i9.Future<_i2.AuthResponse> signUpNewUser({
    required String? email,
    required String? password,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #signUpNewUser,
          [],
          {
            #email: email,
            #password: password,
          },
        ),
        returnValue: _i9.Future<_i2.AuthResponse>.value(_FakeAuthResponse_2(
          this,
          Invocation.method(
            #signUpNewUser,
            [],
            {
              #email: email,
              #password: password,
            },
          ),
        )),
        returnValueForMissingStub:
            _i9.Future<_i2.AuthResponse>.value(_FakeAuthResponse_2(
          this,
          Invocation.method(
            #signUpNewUser,
            [],
            {
              #email: email,
              #password: password,
            },
          ),
        )),
      ) as _i9.Future<_i2.AuthResponse>);

  @override
  _i9.Future<void> signOut() => (super.noSuchMethod(
        Invocation.method(
          #signOut,
          [],
        ),
        returnValue: _i9.Future<void>.value(),
        returnValueForMissingStub: _i9.Future<void>.value(),
      ) as _i9.Future<void>);

  @override
  _i9.Future<_i2.AuthResponse> signInWithEmail({
    required dynamic email,
    required dynamic password,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #signInWithEmail,
          [],
          {
            #email: email,
            #password: password,
          },
        ),
        returnValue: _i9.Future<_i2.AuthResponse>.value(_FakeAuthResponse_2(
          this,
          Invocation.method(
            #signInWithEmail,
            [],
            {
              #email: email,
              #password: password,
            },
          ),
        )),
        returnValueForMissingStub:
            _i9.Future<_i2.AuthResponse>.value(_FakeAuthResponse_2(
          this,
          Invocation.method(
            #signInWithEmail,
            [],
            {
              #email: email,
              #password: password,
            },
          ),
        )),
      ) as _i9.Future<_i2.AuthResponse>);
}

/// A class which mocks [RegistrationService].
///
/// See the documentation for Mockito's code generation for more information.
class MockRegistrationService extends _i1.Mock
    implements _i12.RegistrationService {
  @override
  _i2.User get user => (super.noSuchMethod(
        Invocation.getter(#user),
        returnValue: _FakeUser_3(
          this,
          Invocation.getter(#user),
        ),
        returnValueForMissingStub: _FakeUser_3(
          this,
          Invocation.getter(#user),
        ),
      ) as _i2.User);

  @override
  _i9.Future<void> upsertRegistrationDetails({
    required String? firstName,
    required String? lastName,
    required String? collegeEmail,
    required String? universityRollNumber,
    required String? collegeRegistrationNumber,
    required String? sgpa,
    required String? percentage,
    required String? branch,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #upsertRegistrationDetails,
          [],
          {
            #firstName: firstName,
            #lastName: lastName,
            #collegeEmail: collegeEmail,
            #universityRollNumber: universityRollNumber,
            #collegeRegistrationNumber: collegeRegistrationNumber,
            #sgpa: sgpa,
            #percentage: percentage,
            #branch: branch,
          },
        ),
        returnValue: _i9.Future<void>.value(),
        returnValueForMissingStub: _i9.Future<void>.value(),
      ) as _i9.Future<void>);

  @override
  String getBranchCode(String? branch) => (super.noSuchMethod(
        Invocation.method(
          #getBranchCode,
          [branch],
        ),
        returnValue: _i7.dummyValue<String>(
          this,
          Invocation.method(
            #getBranchCode,
            [branch],
          ),
        ),
        returnValueForMissingStub: _i7.dummyValue<String>(
          this,
          Invocation.method(
            #getBranchCode,
            [branch],
          ),
        ),
      ) as String);

  @override
  _i9.Future<bool> isRegistered() => (super.noSuchMethod(
        Invocation.method(
          #isRegistered,
          [],
        ),
        returnValue: _i9.Future<bool>.value(false),
        returnValueForMissingStub: _i9.Future<bool>.value(false),
      ) as _i9.Future<bool>);
}

/// A class which mocks [ApiCallsService].
///
/// See the documentation for Mockito's code generation for more information.
class MockApiCallsService extends _i1.Mock implements _i13.ApiCallsService {
  @override
  String get userId => (super.noSuchMethod(
        Invocation.getter(#userId),
        returnValue: _i7.dummyValue<String>(
          this,
          Invocation.getter(#userId),
        ),
        returnValueForMissingStub: _i7.dummyValue<String>(
          this,
          Invocation.getter(#userId),
        ),
      ) as String);

  @override
  _i9.Future<int> upsertRegistrationDetails({
    required String? firstName,
    required String? lastName,
    required String? collegeEmail,
    required String? universityRollNumber,
    required String? collegeRegistrationNumber,
    required String? sgpa,
    required String? percentage,
    required String? branch,
    required String? userId,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #upsertRegistrationDetails,
          [],
          {
            #firstName: firstName,
            #lastName: lastName,
            #collegeEmail: collegeEmail,
            #universityRollNumber: universityRollNumber,
            #collegeRegistrationNumber: collegeRegistrationNumber,
            #sgpa: sgpa,
            #percentage: percentage,
            #branch: branch,
            #userId: userId,
          },
        ),
        returnValue: _i9.Future<int>.value(0),
        returnValueForMissingStub: _i9.Future<int>.value(0),
      ) as _i9.Future<int>);

  @override
  _i9.Future<bool> isRegistered({required String? userId}) =>
      (super.noSuchMethod(
        Invocation.method(
          #isRegistered,
          [],
          {#userId: userId},
        ),
        returnValue: _i9.Future<bool>.value(false),
        returnValueForMissingStub: _i9.Future<bool>.value(false),
      ) as _i9.Future<bool>);

  @override
  _i9.Future<String> getJobs({required String? userId}) => (super.noSuchMethod(
        Invocation.method(
          #getJobs,
          [],
          {#userId: userId},
        ),
        returnValue: _i9.Future<String>.value(_i7.dummyValue<String>(
          this,
          Invocation.method(
            #getJobs,
            [],
            {#userId: userId},
          ),
        )),
        returnValueForMissingStub:
            _i9.Future<String>.value(_i7.dummyValue<String>(
          this,
          Invocation.method(
            #getJobs,
            [],
            {#userId: userId},
          ),
        )),
      ) as _i9.Future<String>);

  @override
  _i9.Future<Map<String, String>> getAnalyticsDetails() => (super.noSuchMethod(
        Invocation.method(
          #getAnalyticsDetails,
          [],
        ),
        returnValue: _i9.Future<Map<String, String>>.value(<String, String>{}),
        returnValueForMissingStub:
            _i9.Future<Map<String, String>>.value(<String, String>{}),
      ) as _i9.Future<Map<String, String>>);

  @override
  _i9.Future<int> applyForJob({required int? jobId}) => (super.noSuchMethod(
        Invocation.method(
          #applyForJob,
          [],
          {#jobId: jobId},
        ),
        returnValue: _i9.Future<int>.value(0),
        returnValueForMissingStub: _i9.Future<int>.value(0),
      ) as _i9.Future<int>);

  @override
  _i9.Future<_i4.Student> getStudentDetails() => (super.noSuchMethod(
        Invocation.method(
          #getStudentDetails,
          [],
        ),
        returnValue: _i9.Future<_i4.Student>.value(_FakeStudent_4(
          this,
          Invocation.method(
            #getStudentDetails,
            [],
          ),
        )),
        returnValueForMissingStub: _i9.Future<_i4.Student>.value(_FakeStudent_4(
          this,
          Invocation.method(
            #getStudentDetails,
            [],
          ),
        )),
      ) as _i9.Future<_i4.Student>);
}

/// A class which mocks [JobsService].
///
/// See the documentation for Mockito's code generation for more information.
class MockJobsService extends _i1.Mock implements _i14.JobsService {
  @override
  _i2.User get user => (super.noSuchMethod(
        Invocation.getter(#user),
        returnValue: _FakeUser_3(
          this,
          Invocation.getter(#user),
        ),
        returnValueForMissingStub: _FakeUser_3(
          this,
          Invocation.getter(#user),
        ),
      ) as _i2.User);

  @override
  _i9.Future<_i5.JobData> getJobs() => (super.noSuchMethod(
        Invocation.method(
          #getJobs,
          [],
        ),
        returnValue: _i9.Future<_i5.JobData>.value(_FakeJobData_5(
          this,
          Invocation.method(
            #getJobs,
            [],
          ),
        )),
        returnValueForMissingStub: _i9.Future<_i5.JobData>.value(_FakeJobData_5(
          this,
          Invocation.method(
            #getJobs,
            [],
          ),
        )),
      ) as _i9.Future<_i5.JobData>);
}
