import 'package:flutter/material.dart';
import 'package:job/model/job.dart';

class JobDetails extends StatelessWidget {
  Job _job;
  JobDetails(this._job);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Align(
              alignment: Alignment.center,
              child: Container(
                height: 5,
                width: 50,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20)),
                      child: Image.asset(_job.logoUrl),
                    ),
                    Text(
                      _job.company,
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.bookmark),
                    Icon(Icons.more_horiz),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              _job.title,
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.yellow,
                    ),
                    Text(
                      _job.location,
                      style: TextStyle(fontSize: 17, color: Colors.black45),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.timer,
                      color: Colors.yellow,
                    ),
                    Text(
                      'Full time',
                      style: TextStyle(fontSize: 17, color: Colors.black45),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              'Requirment',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ..._job.req
              .map((e) => Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 9,
                            width: 7,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30)),
                          ),
                          ConstrainedBox(
                            constraints: BoxConstraints(maxWidth: 300),
                            child: Text(e),
                          )
                        ],
                      ),
                    ),
                  ))
              .toList(),
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 38),
            child: Container(
              height: 50,
              width: 380,
              decoration: BoxDecoration(
                  color: Color(0xff14A4BB),
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text(
                  "Apply Now",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
