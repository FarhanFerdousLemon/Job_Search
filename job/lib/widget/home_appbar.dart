import 'package:flutter/material.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome Home",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    "Annay Bryant",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                  )
                ],
              ),
              Container(
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Transform.rotate(
                          angle: -0.5,
                          child: Icon(
                            Icons.notifications_none_outlined,
                            size: MediaQuery.of(context).size.width * .08,
                          ),
                        ),
                        Positioned(
                            //top: 1,
                            right: 10,
                            //bottom: 25,
                            child: CircleAvatar(
                              backgroundColor: Colors.red,
                              radius: 4,
                            ))
                      ],
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    ClipOval(
                      child: Image.asset(
                        "assets/images/avatar.png",
                        width: MediaQuery.of(context).size.width * 0.099,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
