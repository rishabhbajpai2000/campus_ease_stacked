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
    required dynamic departmentId,
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
              departmentId: $departmentId)
              ''';
  }
}

// class Job {
//   String companyName;
//   String jobDescription;
//   String jobProfile;
//   String expCTC;
//   String regLink;
//   String file;
//   String startDate;
//   String endDate;
//   dynamic departmentId;

//   Job({
//     required this.companyName,
//     required this.jobDescription,
//     required this.jobProfile,
//     required this.expCTC,
//     required this.regLink,
//     required this.file,
//     required this.startDate,
//     required this.endDate,
//     required this.departmentId,
//   });

//   factory Job.fromJson(Map<String, dynamic> json) {
//     return Job(
//       companyName: json['companyName'],
//       jobDescription: json['jobDescription'],
//       jobProfile: json['jobProfile'],
//       expCTC: json['expCTC'],
//       regLink: json['regLink'],
//       file: json['file'],
//       startDate: json['startDate'],
//       endDate: json['endDate'],
//       departmentId: json['departmentId'],
//     );
//   }

//   @override
//   String toString() {
//     return '''Job(companyName: $companyName, 
//               jobDescription: $jobDescription, 
//               jobProfile: $jobProfile, 
//               expCTC: $expCTC, 
//               regLink: $regLink, 
//               file: $file, 
//               startDate: $startDate, 
//               endDate: $endDate, 
//               departmentId: $departmentId)
//               ''';
//   }
// }
