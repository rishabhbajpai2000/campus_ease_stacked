import 'package:freezed_annotation/freezed_annotation.dart';
part 'Job.freezed.dart';
part 'Job.g.dart';

@freezed
class Job with _$Job {
  const Job._();
  const factory Job({
    required String jobProfile,
    required String companyName,
    required String jobLocation,
    required String expCTC,
    required String jobDescription,
    required String webSite,
    required String eligibleBranches,
    required String endDate,
    required String regLink,
    required String file,
    required String startDate,
  }) = _Job;
  factory Job.fromJson(Map<String, dynamic> json) => _$JobFromJson(json);
  @override
  String toString() {
    return '''Job(companyName: $companyName, 
              jobDescription: $jobDescription, 
              jobProfile: $jobProfile, 
              expCTC: $expCTC, 
              regLink: $regLink, 
              file: $file, 
              startDate: $startDate, 
              endDate: $endDate, 
              )
              ''';
  }
}
