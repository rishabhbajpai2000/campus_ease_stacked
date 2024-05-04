// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Student.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Student _$StudentFromJson(Map<String, dynamic> json) {
  return _Student.fromJson(json);
}

/// @nodoc
mixin _$Student {
  String get userId => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get rollNumber => throw _privateConstructorUsedError;
  String get collegeAdmissionNumber => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get branch => throw _privateConstructorUsedError;
  String get sgpa => throw _privateConstructorUsedError;
  String get percentage => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudentCopyWith<Student> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentCopyWith<$Res> {
  factory $StudentCopyWith(Student value, $Res Function(Student) then) =
      _$StudentCopyWithImpl<$Res, Student>;
  @useResult
  $Res call(
      {String userId,
      String firstName,
      String lastName,
      String rollNumber,
      String collegeAdmissionNumber,
      String email,
      String branch,
      String sgpa,
      String percentage,
      String? imageUrl});
}

/// @nodoc
class _$StudentCopyWithImpl<$Res, $Val extends Student>
    implements $StudentCopyWith<$Res> {
  _$StudentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? rollNumber = null,
    Object? collegeAdmissionNumber = null,
    Object? email = null,
    Object? branch = null,
    Object? sgpa = null,
    Object? percentage = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      rollNumber: null == rollNumber
          ? _value.rollNumber
          : rollNumber // ignore: cast_nullable_to_non_nullable
              as String,
      collegeAdmissionNumber: null == collegeAdmissionNumber
          ? _value.collegeAdmissionNumber
          : collegeAdmissionNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      branch: null == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as String,
      sgpa: null == sgpa
          ? _value.sgpa
          : sgpa // ignore: cast_nullable_to_non_nullable
              as String,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentImplCopyWith<$Res> implements $StudentCopyWith<$Res> {
  factory _$$StudentImplCopyWith(
          _$StudentImpl value, $Res Function(_$StudentImpl) then) =
      __$$StudentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String firstName,
      String lastName,
      String rollNumber,
      String collegeAdmissionNumber,
      String email,
      String branch,
      String sgpa,
      String percentage,
      String? imageUrl});
}

/// @nodoc
class __$$StudentImplCopyWithImpl<$Res>
    extends _$StudentCopyWithImpl<$Res, _$StudentImpl>
    implements _$$StudentImplCopyWith<$Res> {
  __$$StudentImplCopyWithImpl(
      _$StudentImpl _value, $Res Function(_$StudentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? rollNumber = null,
    Object? collegeAdmissionNumber = null,
    Object? email = null,
    Object? branch = null,
    Object? sgpa = null,
    Object? percentage = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_$StudentImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      rollNumber: null == rollNumber
          ? _value.rollNumber
          : rollNumber // ignore: cast_nullable_to_non_nullable
              as String,
      collegeAdmissionNumber: null == collegeAdmissionNumber
          ? _value.collegeAdmissionNumber
          : collegeAdmissionNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      branch: null == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as String,
      sgpa: null == sgpa
          ? _value.sgpa
          : sgpa // ignore: cast_nullable_to_non_nullable
              as String,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentImpl extends _Student {
  const _$StudentImpl(
      {required this.userId,
      required this.firstName,
      required this.lastName,
      required this.rollNumber,
      required this.collegeAdmissionNumber,
      required this.email,
      required this.branch,
      required this.sgpa,
      required this.percentage,
      required this.imageUrl})
      : super._();

  factory _$StudentImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentImplFromJson(json);

  @override
  final String userId;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String rollNumber;
  @override
  final String collegeAdmissionNumber;
  @override
  final String email;
  @override
  final String branch;
  @override
  final String sgpa;
  @override
  final String percentage;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'Student(userId: $userId, firstName: $firstName, lastName: $lastName, rollNumber: $rollNumber, collegeAdmissionNumber: $collegeAdmissionNumber, email: $email, branch: $branch, sgpa: $sgpa, percentage: $percentage, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.rollNumber, rollNumber) ||
                other.rollNumber == rollNumber) &&
            (identical(other.collegeAdmissionNumber, collegeAdmissionNumber) ||
                other.collegeAdmissionNumber == collegeAdmissionNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.branch, branch) || other.branch == branch) &&
            (identical(other.sgpa, sgpa) || other.sgpa == sgpa) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      firstName,
      lastName,
      rollNumber,
      collegeAdmissionNumber,
      email,
      branch,
      sgpa,
      percentage,
      imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentImplCopyWith<_$StudentImpl> get copyWith =>
      __$$StudentImplCopyWithImpl<_$StudentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentImplToJson(
      this,
    );
  }
}

abstract class _Student extends Student {
  const factory _Student(
      {required final String userId,
      required final String firstName,
      required final String lastName,
      required final String rollNumber,
      required final String collegeAdmissionNumber,
      required final String email,
      required final String branch,
      required final String sgpa,
      required final String percentage,
      required final String? imageUrl}) = _$StudentImpl;
  const _Student._() : super._();

  factory _Student.fromJson(Map<String, dynamic> json) = _$StudentImpl.fromJson;

  @override
  String get userId;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get rollNumber;
  @override
  String get collegeAdmissionNumber;
  @override
  String get email;
  @override
  String get branch;
  @override
  String get sgpa;
  @override
  String get percentage;
  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$StudentImplCopyWith<_$StudentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
