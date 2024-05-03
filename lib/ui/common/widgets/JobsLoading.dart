import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class ShowJobsLoading extends StatelessWidget {
  const ShowJobsLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100,
      child: Center(
        child: SizedBox(
          height: 40,
          width: 40,
          child: LoadingIndicator(
            indicatorType: Indicator.lineScale,
          ),
        ),
      ),
    );
  }
}
