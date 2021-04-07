import 'package:fashion_app/constants.dart';
import 'package:fashion_app/models/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'card.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Phnom Penh",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  FontAwesomeIcons.mapMarkerAlt,
                  size: 20,
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          //title
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Text(
              "Find all \nstores here",
              style: TextStyle(
                  fontSize: 30, height: 1.5, fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          //search bar
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Flexible(
                    child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                      color: grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      cursorColor: primary,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          suffixIcon: Icon(
                            Feather.search,
                            size: 20,
                          ),
                          hintText: "Search"),
                    ),
                  ),
                )),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 45,
                  width: 45,
                  decoration:
                      BoxDecoration(color: black, shape: BoxShape.circle),
                  child: Center(
                    child: Icon(
                      FontAwesomeIcons.mapMarkerAlt,
                      color: white,
                      size: 20,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Divider(color: grey.withOpacity(0.9)),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Text(
              "All stores",
              style: TextStyle(fontSize: 22, color: black),
            ),
          ),
          SizedBox(
            height: 20,
          ),

          Column(
              children: List.generate(storeList.length, (index) {
            return MyCard(
              store: storeList[index],
            );
          }))
        ],
      ),
    );
  }
}
