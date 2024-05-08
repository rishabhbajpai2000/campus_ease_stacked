// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Job.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Job _$JobFromJson(Map<String, dynamic> json) {
  return _Job.fromJson(json);
}

/// @nodoc
mixin _$Job {
  @JsonKey(name: "job_profile")
  String get jobProfile => throw _privateConstructorUsedError;
  @JsonKey(name: "company_name")
  String get companyName => throw _privateConstructorUsedError;
  @JsonKey(name: "job_location")
  String get jobLocation => throw _privateConstructorUsedError;
  @JsonKey(name: "exp_ctc")
  String get expCTC => throw _privateConstructorUsedError;
  @JsonKey(name: "job_description")
  String get jobDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "website_url")
  String get webSite => throw _privateConstructorUsedError;
  List<String> get branches => throw _privateConstructorUsedError;
  @JsonKey(name: "end_date")
  String get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: "reg_link")
  String get regLink => throw _privateConstructorUsedError;
  String get file => throw _privateConstructorUsedError;
  @JsonKey(name: "start_date")
  String get startDate => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobCopyWith<Job> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobCopyWith<$Res> {
  factory $JobCopyWith(Job value, $Res Function(Job) then) =
      _$JobCopyWithImpl<$Res, Job>;
  @useResult
  $Res call(
      {@JsonKey(name: "job_profile") String jobProfile,
      @JsonKey(name: "company_name") String companyName,
      @JsonKey(name: "job_location") String jobLocation,
      @JsonKey(name: "exp_ctc") String expCTC,
      @JsonKey(name: "job_description") String jobDescription,
      @JsonKey(name: "website_url") String webSite,
      List<String> branches,
      @JsonKey(name: "end_date") String endDate,
      @JsonKey(name: "reg_link") String regLink,
      String file,
      @JsonKey(name: "start_date") String startDate,
      int id});
}

/// @nodoc
class _$JobCopyWithImpl<$Res, $Val extends Job> implements $JobCopyWith<$Res> {
  _$JobCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobProfile = null,
    Object? companyName = null,
    Object? jobLocation = null,
    Object? expCTC = null,
    Object? jobDescription = null,
    Object? webSite = null,
    Object? branches = null,
    Object? endDate = null,
    Object? regLink = null,
    Object? file = null,
    Object? startDate = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      jobProfile: null == jobProfile
          ? _value.jobProfile
          : jobProfile // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      jobLocation: null == jobLocation
          ? _value.jobLocation
          : jobLocation // ignore: cast_nullable_to_non_nullable
              as String,
      expCTC: null == expCTC
          ? _value.expCTC
          : expCTC // ignore: cast_nullable_to_non_nullable
              as String,
      jobDescription: null == jobDescription
          ? _value.jobDescription
          : jobDescription // ignore: cast_nullable_to_non_nullable
              as String,
      webSite: null == webSite
          ? _value.webSite
          : webSite // ignore: cast_nullable_to_non_nullable
              as String,
      branches: null == branches
          ? _value.branches
          : branches // ignore: cast_nullable_to_non_nullable
              as List<String>,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      regLink: null == regLink
          ? _value.regLink
          : regLink // ignore: cast_nullable_to_non_nullable
              as String,
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobImplCopyWith<$Res> implements $JobCopyWith<$Res> {
  factory _$$JobImplCopyWith(_$JobImpl value, $Res Function(_$JobImpl) then) =
      __$$JobImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "job_profile") String jobProfile,
      @JsonKey(name: "company_name") String companyName,
      @JsonKey(name: "job_location") String jobLocation,
      @JsonKey(name: "exp_ctc") String expCTC,
      @JsonKey(name: "job_description") String jobDescription,
      @JsonKey(name: "website_url") String webSite,
      List<String> branches,
      @JsonKey(name: "end_date") String endDate,
      @JsonKey(name: "reg_link") String regLink,
      String file,
      @JsonKey(name: "start_date") String startDate,
      int id});
}

/// @nodoc
class __$$JobImplCopyWithImpl<$Res> extends _$JobCopyWithImpl<$Res, _$JobImpl>
    implements _$$JobImplCopyWith<$Res> {
  __$$JobImplCopyWithImpl(_$JobImpl _value, $Res Function(_$JobImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobProfile = null,
    Object? companyName = null,
    Object? jobLocation = null,
    Object? expCTC = null,
    Object? jobDescription = null,
    Object? webSite = null,
    Object? branches = null,
    Object? endDate = null,
    Object? regLink = null,
    Object? file = null,
    Object? startDate = null,
    Object? id = null,
  }) {
    return _then(_$JobImpl(
      jobProfile: null == jobProfile
          ? _value.jobProfile
          : jobProfile // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      jobLocation: null == jobLocation
          ? _value.jobLocation
          : jobLocation // ignore: cast_nullable_to_non_nullable
              as String,
      expCTC: null == expCTC
          ? _value.expCTC
          : expCTC // ignore: cast_nullable_to_non_nullable
              as String,
      jobDescription: null == jobDescription
          ? _value.jobDescription
          : jobDescription // ignore: cast_nullable_to_non_nullable
              as String,
      webSite: null == webSite
          ? _value.webSite
          : webSite // ignore: cast_nullable_to_non_nullable
              as String,
      branches: null == branches
          ? _value._branches
          : branches // ignore: cast_nullable_to_non_nullable
              as List<String>,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      regLink: null == regLink
          ? _value.regLink
          : regLink // ignore: cast_nullable_to_non_nullable
              as String,
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobImpl extends _Job {
  const _$JobImpl(
      {@JsonKey(name: "job_profile") required this.jobProfile,
      @JsonKey(name: "company_name") required this.companyName,
      @JsonKey(name: "job_location") required this.jobLocation,
      @JsonKey(name: "exp_ctc") required this.expCTC,
      @JsonKey(name: "job_description") required this.jobDescription,
      @JsonKey(name: "website_url") required this.webSite,
      required final List<String> branches,
      @JsonKey(name: "end_date") required this.endDate,
      @JsonKey(name: "reg_link") required this.regLink,
      required this.file,
      @JsonKey(name: "start_date") required this.startDate,
      required this.id})
      : _branches = branches,
        super._();

  factory _$JobImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobImplFromJson(json);

  @override
  @JsonKey(name: "job_profile")
  final String jobProfile;
  @override
  @JsonKey(name: "company_name")
  final String companyName;
  @override
  @JsonKey(name: "job_location")
  final String jobLocation;
  @override
  @JsonKey(name: "exp_ctc")
  final String expCTC;
  @override
  @JsonKey(name: "job_description")
  final String jobDescription;
  @override
  @JsonKey(name: "website_url")
  final String webSite;
  final List<String> _branches;
  @override
  List<String> get branches {
    if (_branches is EqualUnmodifiableListView) return _branches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_branches);
  }

  @override
  @JsonKey(name: "end_date")
  final String endDate;
  @override
  @JsonKey(name: "reg_link")
  final String regLink;
  @override
  final String file;
  @override
  @JsonKey(name: "start_date")
  final String startDate;
  @override
  final int id;

  @override
  String toString() {
    return 'Job(jobProfile: $jobProfile, companyName: $companyName, jobLocation: $jobLocation, expCTC: $expCTC, jobDescription: $jobDescription, webSite: $webSite, branches: $branches, endDate: $endDate, regLink: $regLink, file: $file, startDate: $startDate, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobImpl &&
            (identical(other.jobProfile, jobProfile) ||
                other.jobProfile == jobProfile) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.jobLocation, jobLocation) ||
                other.jobLocation == jobLocation) &&
            (identical(other.expCTC, expCTC) || other.expCTC == expCTC) &&
            (identical(other.jobDescription, jobDescription) ||
                other.jobDescription == jobDescription) &&
            (identical(other.webSite, webSite) || other.webSite == webSite) &&
            const DeepCollectionEquality().equals(other._branches, _branches) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.regLink, regLink) || other.regLink == regLink) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      jobProfile,
      companyName,
      jobLocation,
      expCTC,
      jobDescription,
      webSite,
      const DeepCollectionEquality().hash(_branches),
      endDate,
      regLink,
      file,
      startDate,
      id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobImplCopyWith<_$JobImpl> get copyWith =>
      __$$JobImplCopyWithImpl<_$JobImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobImplToJson(
      this,
    );
  }
}

abstract class _Job extends Job {
  const factory _Job(
      {@JsonKey(name: "job_profile") required final String jobProfile,
      @JsonKey(name: "company_name") required final String companyName,
      @JsonKey(name: "job_location") required final String jobLocation,
      @JsonKey(name: "exp_ctc") required final String expCTC,
      @JsonKey(name: "job_description") required final String jobDescription,
      @JsonKey(name: "website_url") required final String webSite,
      required final List<String> branches,
      @JsonKey(name: "end_date") required final String endDate,
      @JsonKey(name: "reg_link") required final String regLink,
      required final String file,
      @JsonKey(name: "start_date") required final String startDate,
      required final int id}) = _$JobImpl;
  const _Job._() : super._();

  factory _Job.fromJson(Map<String, dynamic> json) = _$JobImpl.fromJson;

  @override
  @JsonKey(name: "job_profile")
  String get jobProfile;
  @override
  @JsonKey(name: "company_name")
  String get companyName;
  @override
  @JsonKey(name: "job_location")
  String get jobLocation;
  @override
  @JsonKey(name: "exp_ctc")
  String get expCTC;
  @override
  @JsonKey(name: "job_description")
  String get jobDescription;
  @override
  @JsonKey(name: "website_url")
  String get webSite;
  @override
  List<String> get branches;
  @override
  @JsonKey(name: "end_date")
  String get endDate;
  @override
  @JsonKey(name: "reg_link")
  String get regLink;
  @override
  String get file;
  @override
  @JsonKey(name: "start_date")
  String get startDate;
  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$JobImplCopyWith<_$JobImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
