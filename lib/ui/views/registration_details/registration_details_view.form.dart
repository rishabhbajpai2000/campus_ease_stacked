// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:campus_ease/ui/views/registration_details/registration_details_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String FirstNameValueKey = 'firstName';
const String LastNameValueKey = 'lastName';
const String CollegeEmailValueKey = 'collegeEmail';
const String UniversityRollNumberValueKey = 'universityRollNumber';
const String CollegeRegistrationNumberValueKey = 'collegeRegistrationNumber';
const String SgpaValueKey = 'sgpa';
const String PercentageValueKey = 'percentage';

final Map<String, TextEditingController>
    _RegistrationDetailsViewTextEditingControllers = {};

final Map<String, FocusNode> _RegistrationDetailsViewFocusNodes = {};

final Map<String, String? Function(String?)?>
    _RegistrationDetailsViewTextValidations = {
  FirstNameValueKey: RegistrationDetailsValidators.validateFirstName,
  LastNameValueKey: RegistrationDetailsValidators.validateLastName,
  CollegeEmailValueKey: RegistrationDetailsValidators.validateEmail,
  UniversityRollNumberValueKey:
      RegistrationDetailsValidators.validateRollNumber,
  CollegeRegistrationNumberValueKey:
      RegistrationDetailsValidators.validateRegistrationNumber,
  SgpaValueKey: RegistrationDetailsValidators.validateSGPA,
  PercentageValueKey: RegistrationDetailsValidators.validatePercentage,
};

mixin $RegistrationDetailsView {
  TextEditingController get firstNameController =>
      _getFormTextEditingController(FirstNameValueKey);
  TextEditingController get lastNameController =>
      _getFormTextEditingController(LastNameValueKey);
  TextEditingController get collegeEmailController =>
      _getFormTextEditingController(CollegeEmailValueKey);
  TextEditingController get universityRollNumberController =>
      _getFormTextEditingController(UniversityRollNumberValueKey);
  TextEditingController get collegeRegistrationNumberController =>
      _getFormTextEditingController(CollegeRegistrationNumberValueKey);
  TextEditingController get sgpaController =>
      _getFormTextEditingController(SgpaValueKey);
  TextEditingController get percentageController =>
      _getFormTextEditingController(PercentageValueKey);

  FocusNode get firstNameFocusNode => _getFormFocusNode(FirstNameValueKey);
  FocusNode get lastNameFocusNode => _getFormFocusNode(LastNameValueKey);
  FocusNode get collegeEmailFocusNode =>
      _getFormFocusNode(CollegeEmailValueKey);
  FocusNode get universityRollNumberFocusNode =>
      _getFormFocusNode(UniversityRollNumberValueKey);
  FocusNode get collegeRegistrationNumberFocusNode =>
      _getFormFocusNode(CollegeRegistrationNumberValueKey);
  FocusNode get sgpaFocusNode => _getFormFocusNode(SgpaValueKey);
  FocusNode get percentageFocusNode => _getFormFocusNode(PercentageValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_RegistrationDetailsViewTextEditingControllers.containsKey(key)) {
      return _RegistrationDetailsViewTextEditingControllers[key]!;
    }

    _RegistrationDetailsViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _RegistrationDetailsViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_RegistrationDetailsViewFocusNodes.containsKey(key)) {
      return _RegistrationDetailsViewFocusNodes[key]!;
    }
    _RegistrationDetailsViewFocusNodes[key] = FocusNode();
    return _RegistrationDetailsViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    firstNameController.addListener(() => _updateFormData(model));
    lastNameController.addListener(() => _updateFormData(model));
    collegeEmailController.addListener(() => _updateFormData(model));
    universityRollNumberController.addListener(() => _updateFormData(model));
    collegeRegistrationNumberController
        .addListener(() => _updateFormData(model));
    sgpaController.addListener(() => _updateFormData(model));
    percentageController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    firstNameController.addListener(() => _updateFormData(model));
    lastNameController.addListener(() => _updateFormData(model));
    collegeEmailController.addListener(() => _updateFormData(model));
    universityRollNumberController.addListener(() => _updateFormData(model));
    collegeRegistrationNumberController
        .addListener(() => _updateFormData(model));
    sgpaController.addListener(() => _updateFormData(model));
    percentageController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          FirstNameValueKey: firstNameController.text,
          LastNameValueKey: lastNameController.text,
          CollegeEmailValueKey: collegeEmailController.text,
          UniversityRollNumberValueKey: universityRollNumberController.text,
          CollegeRegistrationNumberValueKey:
              collegeRegistrationNumberController.text,
          SgpaValueKey: sgpaController.text,
          PercentageValueKey: percentageController.text,
        }),
    );

    if (_autoTextFieldValidation || forceValidate) {
      updateValidationData(model);
    }
  }

  bool validateFormFields(FormViewModel model) {
    _updateFormData(model, forceValidate: true);
    return model.isFormValid;
  }

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    for (var controller
        in _RegistrationDetailsViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _RegistrationDetailsViewFocusNodes.values) {
      focusNode.dispose();
    }

    _RegistrationDetailsViewTextEditingControllers.clear();
    _RegistrationDetailsViewFocusNodes.clear();
  }
}

extension ValueProperties on FormStateHelper {
  bool get hasAnyValidationMessage => this
      .fieldsValidationMessages
      .values
      .any((validation) => validation != null);

  bool get isFormValid {
    if (!_autoTextFieldValidation) this.validateForm();

    return !hasAnyValidationMessage;
  }

  String? get firstNameValue => this.formValueMap[FirstNameValueKey] as String?;
  String? get lastNameValue => this.formValueMap[LastNameValueKey] as String?;
  String? get collegeEmailValue =>
      this.formValueMap[CollegeEmailValueKey] as String?;
  String? get universityRollNumberValue =>
      this.formValueMap[UniversityRollNumberValueKey] as String?;
  String? get collegeRegistrationNumberValue =>
      this.formValueMap[CollegeRegistrationNumberValueKey] as String?;
  String? get sgpaValue => this.formValueMap[SgpaValueKey] as String?;
  String? get percentageValue =>
      this.formValueMap[PercentageValueKey] as String?;

  set firstNameValue(String? value) {
    this.setData(
      this.formValueMap..addAll({FirstNameValueKey: value}),
    );

    if (_RegistrationDetailsViewTextEditingControllers.containsKey(
        FirstNameValueKey)) {
      _RegistrationDetailsViewTextEditingControllers[FirstNameValueKey]?.text =
          value ?? '';
    }
  }

  set lastNameValue(String? value) {
    this.setData(
      this.formValueMap..addAll({LastNameValueKey: value}),
    );

    if (_RegistrationDetailsViewTextEditingControllers.containsKey(
        LastNameValueKey)) {
      _RegistrationDetailsViewTextEditingControllers[LastNameValueKey]?.text =
          value ?? '';
    }
  }

  set collegeEmailValue(String? value) {
    this.setData(
      this.formValueMap..addAll({CollegeEmailValueKey: value}),
    );

    if (_RegistrationDetailsViewTextEditingControllers.containsKey(
        CollegeEmailValueKey)) {
      _RegistrationDetailsViewTextEditingControllers[CollegeEmailValueKey]
          ?.text = value ?? '';
    }
  }

  set universityRollNumberValue(String? value) {
    this.setData(
      this.formValueMap..addAll({UniversityRollNumberValueKey: value}),
    );

    if (_RegistrationDetailsViewTextEditingControllers.containsKey(
        UniversityRollNumberValueKey)) {
      _RegistrationDetailsViewTextEditingControllers[
              UniversityRollNumberValueKey]
          ?.text = value ?? '';
    }
  }

  set collegeRegistrationNumberValue(String? value) {
    this.setData(
      this.formValueMap..addAll({CollegeRegistrationNumberValueKey: value}),
    );

    if (_RegistrationDetailsViewTextEditingControllers.containsKey(
        CollegeRegistrationNumberValueKey)) {
      _RegistrationDetailsViewTextEditingControllers[
              CollegeRegistrationNumberValueKey]
          ?.text = value ?? '';
    }
  }

  set sgpaValue(String? value) {
    this.setData(
      this.formValueMap..addAll({SgpaValueKey: value}),
    );

    if (_RegistrationDetailsViewTextEditingControllers.containsKey(
        SgpaValueKey)) {
      _RegistrationDetailsViewTextEditingControllers[SgpaValueKey]?.text =
          value ?? '';
    }
  }

  set percentageValue(String? value) {
    this.setData(
      this.formValueMap..addAll({PercentageValueKey: value}),
    );

    if (_RegistrationDetailsViewTextEditingControllers.containsKey(
        PercentageValueKey)) {
      _RegistrationDetailsViewTextEditingControllers[PercentageValueKey]?.text =
          value ?? '';
    }
  }

  bool get hasFirstName =>
      this.formValueMap.containsKey(FirstNameValueKey) &&
      (firstNameValue?.isNotEmpty ?? false);
  bool get hasLastName =>
      this.formValueMap.containsKey(LastNameValueKey) &&
      (lastNameValue?.isNotEmpty ?? false);
  bool get hasCollegeEmail =>
      this.formValueMap.containsKey(CollegeEmailValueKey) &&
      (collegeEmailValue?.isNotEmpty ?? false);
  bool get hasUniversityRollNumber =>
      this.formValueMap.containsKey(UniversityRollNumberValueKey) &&
      (universityRollNumberValue?.isNotEmpty ?? false);
  bool get hasCollegeRegistrationNumber =>
      this.formValueMap.containsKey(CollegeRegistrationNumberValueKey) &&
      (collegeRegistrationNumberValue?.isNotEmpty ?? false);
  bool get hasSgpa =>
      this.formValueMap.containsKey(SgpaValueKey) &&
      (sgpaValue?.isNotEmpty ?? false);
  bool get hasPercentage =>
      this.formValueMap.containsKey(PercentageValueKey) &&
      (percentageValue?.isNotEmpty ?? false);

  bool get hasFirstNameValidationMessage =>
      this.fieldsValidationMessages[FirstNameValueKey]?.isNotEmpty ?? false;
  bool get hasLastNameValidationMessage =>
      this.fieldsValidationMessages[LastNameValueKey]?.isNotEmpty ?? false;
  bool get hasCollegeEmailValidationMessage =>
      this.fieldsValidationMessages[CollegeEmailValueKey]?.isNotEmpty ?? false;
  bool get hasUniversityRollNumberValidationMessage =>
      this.fieldsValidationMessages[UniversityRollNumberValueKey]?.isNotEmpty ??
      false;
  bool get hasCollegeRegistrationNumberValidationMessage =>
      this
          .fieldsValidationMessages[CollegeRegistrationNumberValueKey]
          ?.isNotEmpty ??
      false;
  bool get hasSgpaValidationMessage =>
      this.fieldsValidationMessages[SgpaValueKey]?.isNotEmpty ?? false;
  bool get hasPercentageValidationMessage =>
      this.fieldsValidationMessages[PercentageValueKey]?.isNotEmpty ?? false;

  String? get firstNameValidationMessage =>
      this.fieldsValidationMessages[FirstNameValueKey];
  String? get lastNameValidationMessage =>
      this.fieldsValidationMessages[LastNameValueKey];
  String? get collegeEmailValidationMessage =>
      this.fieldsValidationMessages[CollegeEmailValueKey];
  String? get universityRollNumberValidationMessage =>
      this.fieldsValidationMessages[UniversityRollNumberValueKey];
  String? get collegeRegistrationNumberValidationMessage =>
      this.fieldsValidationMessages[CollegeRegistrationNumberValueKey];
  String? get sgpaValidationMessage =>
      this.fieldsValidationMessages[SgpaValueKey];
  String? get percentageValidationMessage =>
      this.fieldsValidationMessages[PercentageValueKey];
}

extension Methods on FormStateHelper {
  setFirstNameValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[FirstNameValueKey] = validationMessage;
  setLastNameValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[LastNameValueKey] = validationMessage;
  setCollegeEmailValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[CollegeEmailValueKey] = validationMessage;
  setUniversityRollNumberValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[UniversityRollNumberValueKey] =
          validationMessage;
  setCollegeRegistrationNumberValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[CollegeRegistrationNumberValueKey] =
          validationMessage;
  setSgpaValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[SgpaValueKey] = validationMessage;
  setPercentageValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[PercentageValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    firstNameValue = '';
    lastNameValue = '';
    collegeEmailValue = '';
    universityRollNumberValue = '';
    collegeRegistrationNumberValue = '';
    sgpaValue = '';
    percentageValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      FirstNameValueKey: getValidationMessage(FirstNameValueKey),
      LastNameValueKey: getValidationMessage(LastNameValueKey),
      CollegeEmailValueKey: getValidationMessage(CollegeEmailValueKey),
      UniversityRollNumberValueKey:
          getValidationMessage(UniversityRollNumberValueKey),
      CollegeRegistrationNumberValueKey:
          getValidationMessage(CollegeRegistrationNumberValueKey),
      SgpaValueKey: getValidationMessage(SgpaValueKey),
      PercentageValueKey: getValidationMessage(PercentageValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _RegistrationDetailsViewTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _RegistrationDetailsViewTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      FirstNameValueKey: getValidationMessage(FirstNameValueKey),
      LastNameValueKey: getValidationMessage(LastNameValueKey),
      CollegeEmailValueKey: getValidationMessage(CollegeEmailValueKey),
      UniversityRollNumberValueKey:
          getValidationMessage(UniversityRollNumberValueKey),
      CollegeRegistrationNumberValueKey:
          getValidationMessage(CollegeRegistrationNumberValueKey),
      SgpaValueKey: getValidationMessage(SgpaValueKey),
      PercentageValueKey: getValidationMessage(PercentageValueKey),
    });
