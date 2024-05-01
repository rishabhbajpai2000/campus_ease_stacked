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
      webSite: json['websiteUrl'] as String,
      branches: json['branches'] as String,
      endDate: json['endDate'] as String,
      regLink: json['regLink'] as String,
      file: json['file'] as String,
      startDate: json['startDate'] as String,
    );

Map<String, dynamic> _$$JobImplToJson(_$JobImpl instance) => <String, dynamic>{
      'jobProfile': instance.jobProfile,
      'companyName': instance.companyName,
      'jobLocation': instance.jobLocation,
      'expCTC': instance.expCTC,
      'jobDescription': instance.jobDescription,
      'websiteUrl': instance.webSite,
      'branches': instance.branches,
      'endDate': instance.endDate,
      'regLink': instance.regLink,
      'file': instance.file,
      'startDate': instance.startDate,
    };
