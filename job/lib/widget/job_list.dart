import 'package:flutter/material.dart';
import 'package:job/model/job.dart';

import 'package:job/widget/job_details.dart';
import 'package:job/widget/job_item.dart';

class JobList extends StatelessWidget {
  final jobList = Job.generateJobs();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) => JobDetails(jobList[index]));
                },
                child: JobItem(jobList[index]));
          },
          separatorBuilder: (context, index) => SizedBox(
                width: 5,
              ),
          itemCount: jobList.length),
    );
  }
}
