// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobImpl _$$JobImplFromJson(Map<String, dynamic> json) => _$JobImpl(
      jobProfile: json['job_profile'] as String,
      companyName: json['company_name'] as String,
      jobLocation: json['job_location'] as String,
      expCTC: json['exp_ctc'] as String,
      jobDescription: json['job_description'] as String,
      webSite: json['website_url'] as String,
      branches:
          (json['branches'] as List<dynamic>).map((e) => e as String).toList(),
      endDate: json['end_date'] as String,
      regLink: json['reg_link'] as String,
      file: json['file'] as String,
      startDate: json['start_date'] as String,
      id: json['id'] as int,
    );

Map<String, dynamic> _$$JobImplToJson(_$JobImpl instance) => <String, dynamic>{
      'job_profile': instance.jobProfile,
      'company_name': instance.companyName,
      'job_location': instance.jobLocation,
      'exp_ctc': instance.expCTC,
      'job_description': instance.jobDescription,
      'website_url': instance.webSite,
      'branches': instance.branches,
      'end_date': instance.endDate,
      'reg_link': instance.regLink,
      'file': instance.file,
      'start_date': instance.startDate,
      'id': instance.id,
    };
