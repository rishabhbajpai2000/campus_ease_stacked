import 'package:freezed_annotation/freezed_annotation.dart';

part 'Student.freezed.dart';
part 'Student.g.dart';

@freezed
class Student with _$Student {
  const Student._();
  const factory Student({
    required String userId,
    required String firstName,
    required String lastName,
    required String rollNumber,
    required String collegeAdmissionNumber,
    required String email,
    required String branch,
    required String sgpa,
    required String percentage,
    required String? imageUrl,
    @JsonKey(defaultValue: "12345") required String collegeRegistrationNumber,
  }) = _Student;

  factory Student.fromJson(Map<String, dynamic> json) =>
      _$StudentFromJson(json);
}
