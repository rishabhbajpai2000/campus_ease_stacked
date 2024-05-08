import 'package:freezed_annotation/freezed_annotation.dart';
part 'Job.freezed.dart';
part 'Job.g.dart';

@freezed
class Job with _$Job {
  const Job._();
  const factory Job({
    @JsonKey(name: "job_profile") required String jobProfile,
    @JsonKey(name: "company_name") required String companyName,
    @JsonKey(name: "job_location") required String jobLocation,
    @JsonKey(name: "exp_ctc") required String expCTC,
    @JsonKey(name: "job_description") required String jobDescription,
    @JsonKey(name: "website_url") required String webSite,
    required List<String> branches,
    @JsonKey(name: "end_date") required String endDate,
    @JsonKey(
      name: "reg_link",
    )
    required String regLink,
    required String file,
    @JsonKey(name: "start_date") required String startDate,
    required int id,
  }) = _Job;
  factory Job.fromJson(Map<String, dynamic> json) => _$JobFromJson(json);

  String printBranches() {
    return branches.join(" | ");
  }
}
// flutter pub run build_runner watch --delete-conflicting-outputs
