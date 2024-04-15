// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobImpl _$$JobImplFromJson(Map<String, dynamic> json) => _$JobImpl(
      jobProfile: json['jobProfile'] as String,
      companyName: json['companyName'] as String,
      jobLocation: json['jobLocation'] as String,
      expCTC: json['expCTC'] as String,
      jobDescription: json['jobDescription'] as String,
      webSite: json['webSite'] as String,
      eligibleBranches: json['eligibleBranches'] as String,
      endDate: json['endDate'] as String,
      regLink: json['regLink'] as String,
      file: json['file'] as String,
      startDate: json['startDate'] as String,
      departmentId: json['departmentId'],
    );

Map<String, dynamic> _$$JobImplToJson(_$JobImpl instance) => <String, dynamic>{
      'jobProfile': instance.jobProfile,
      'companyName': instance.companyName,
      'jobLocation': instance.jobLocation,
      'expCTC': instance.expCTC,
      'jobDescription': instance.jobDescription,
      'webSite': instance.webSite,
      'eligibleBranches': instance.eligibleBranches,
      'endDate': instance.endDate,
      'regLink': instance.regLink,
      'file': instance.file,
      'startDate': instance.startDate,
      'departmentId': instance.departmentId,
    };
