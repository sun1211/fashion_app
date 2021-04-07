import 'package:fashion_app/constants.dart';
import 'package:fashion_app/models/model.dart';
import 'package:fashion_app/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
            child: Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: NetworkImage(profileUrl), fit: BoxFit.cover)),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text(
                      "Daniel",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "4 Orders",
                      style: TextStyle(fontSize: 15, color: grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Divider(
            color: grey.withOpacity(0.8),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(menusMore.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: Text(
                      menusMore[index],
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 23),
                    ),
                  );
                })),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: (SizeConfig.screenWidth - 100) / 2,
                  height: 50,
                  decoration: BoxDecoration(
                      color: black, borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Text(
                      "Settings",
                      style: TextStyle(fontSize: 15, color: white),
                    ),
                  ),
                ),
                Container(
                  width: (SizeConfig.screenWidth - 100) / 2,
                  height: 50,
                  decoration: BoxDecoration(
                      color: black, borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: Text(
                      "Sign Out",
                      style: TextStyle(fontSize: 15, color: white),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
