import 'package:fashion_app/components/custom_slider.dart';
import 'package:fashion_app/constants.dart';
import 'package:fashion_app/models/model.dart';
import 'package:flutter/material.dart';

import 'category.dart';
import 'header.dart';
import 'recent.dart';
import 'recommnet.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          buildHeader(),
          SizedBox(
            height: 40,
          ),
          //category title
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Categories",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    Text("All", style: TextStyle(color: grey)),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: grey,
                      size: 16,
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildCategory(),
          SizedBox(
            height: 40,
          ),
          //recommnend title
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Recommended for you",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    Text("All", style: TextStyle(color: grey)),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: grey,
                      size: 16,
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildRecommend(),
          SizedBox(
            height: 40,
          ),
          CustomeCarouselHomePage(
            items: slider,
          ),
          SizedBox(
            height: 40,
          ),
          //recent title
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Recent viewed",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    Text("All", style: TextStyle(color: grey)),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: grey,
                      size: 16,
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildRecent(),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
