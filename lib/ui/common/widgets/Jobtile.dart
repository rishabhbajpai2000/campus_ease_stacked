import 'package:campus_ease/app/app.router.dart';
import 'package:campus_ease/models/Job.dart';
import 'package:campus_ease/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

class JobTile extends StatelessWidget {
  const JobTile({
    super.key,
    required this.job,
    this.showApplyButton = true,
  });

  final Job job;
  final showApplyButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey)),
        height: 110,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpaceTiny,
                Row(
                  children: [
                    Text(
                      "${job.jobProfile} | ${job.companyName}",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "Job Id: ${job.id}",
                      style: TextStyle(color: Colors.grey),
                    ),
                    horizontalSpaceSmall
                  ],
                ),
                verticalSpaceTiny,
                Text(
                  "${job.expCTC} | Full Time | ${job.jobLocation}",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                ),
                Divider(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Deadline: ${job.endDate}",
                    ),
                    Expanded(child: Container()),
                    GestureDetector(
                      onTap: () {
                        NavigationService().navigateToJobDetailsViewView(
                            job: job, showApplyButton: showApplyButton);
                      },
                      child: const Text(
                        "View Details",
                        style: TextStyle(
                          color: Color(0xff0974F0),
                        ),
                      ),
                    ),
                    horizontalSpaceSmall
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
