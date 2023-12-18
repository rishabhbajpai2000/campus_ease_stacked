import 'package:campus_ease/app/app.logger.dart';
import 'package:campus_ease/services/Job.dart';

class JobData {
  final _logger = getLogger("JobData");
  List<Job> filled;
  List<Job> unfilled;

  JobData({
    required this.filled,
    required this.unfilled,
  });

  factory JobData.fromJson(Map<String, dynamic> json) {
    return JobData(
      filled: List<Job>.from(json['filled'].map((x) => Job.fromJson(x))),
      unfilled: List<Job>.from(json['unfilled'].map((x) => Job.fromJson(x))),
    );
  }

  void printData() {
    _logger.i('Filled Jobs:');
    for (var job in filled) {
      _logger.i(job.toString());
    }

    _logger.i('Unfilled Jobs:');
    for (var job in unfilled) {
      _logger.i(job.toString());
    }
  }
}
