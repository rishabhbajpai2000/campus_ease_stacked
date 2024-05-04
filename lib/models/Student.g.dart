// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentImpl _$$StudentImplFromJson(Map<String, dynamic> json) =>
    _$StudentImpl(
      userId: json['userId'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      rollNumber: json['rollNumber'] as String,
      collegeAdmissionNumber: json['collegeAdmissionNumber'] as String,
      email: json['email'] as String,
      branch: json['branch'] as String,
      sgpa: json['sgpa'] as String,
      percentage: json['percentage'] as String,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$StudentImplToJson(_$StudentImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'rollNumber': instance.rollNumber,
      'collegeAdmissionNumber': instance.collegeAdmissionNumber,
      'email': instance.email,
      'branch': instance.branch,
      'sgpa': instance.sgpa,
      'percentage': instance.percentage,
      'imageUrl': instance.imageUrl,
    };
