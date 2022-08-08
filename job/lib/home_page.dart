import 'package:flutter/material.dart';
import 'package:job/widget/home_appbar.dart';
import 'package:job/widget/job_list.dart';
import 'package:job/widget/job_search.dart';
import 'package:job/widget/tag_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(flex: 2, child: Container()),
              Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.black12,
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [HomeAppbar(), JobSearch(), TagList(), JobList()],
              ),
            ),
          )
        ],
      ),
    );
  }
}
