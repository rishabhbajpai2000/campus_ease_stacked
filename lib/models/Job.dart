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
    @JsonKey(name: "websiteUrl") required String webSite,
    required String branches,
    required String endDate,
    required String regLink,
    required String file,
    required String startDate,
    required int id,
  }) = _Job;
  factory Job.fromJson(Map<String, dynamic> json) => _$JobFromJson(json);
}
// flutter pub run build_runner watch --delete-conflicting-outputs
