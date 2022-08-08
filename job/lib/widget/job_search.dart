import 'package:flutter/material.dart';

class JobSearch extends StatelessWidget {
  const JobSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Container(
        height: 400,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/search_bg.png"),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 28, left: 25, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Fast Search",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "You can search quickly \n\nthe job you want",
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
              SizedBox(
                height: 55,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
