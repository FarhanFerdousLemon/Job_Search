import 'package:flutter/material.dart';
import 'package:job/model/job.dart';

class JobItem extends StatelessWidget {
  Job _job;
  JobItem(this._job);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white70),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.yellow),
                      child: Image.asset(_job.logoUrl),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      _job.company,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                Icon(Icons.bookmark_outline_outlined),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                _job.title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: Colors.yellow,
                  size: 30,
                ),
                Text(
                  _job.location,
                  style: TextStyle(fontSize: 20, color: Colors.black45),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
