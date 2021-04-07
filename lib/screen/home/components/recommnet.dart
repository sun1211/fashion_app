import 'package:fashion_app/constants.dart';
import 'package:fashion_app/models/model.dart';
import 'package:flutter/material.dart';

SingleChildScrollView buildRecommend() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: List.generate(
        recommends.length,
        (index) {
          return Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 140,
                  height: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          image: NetworkImage(recommends[index]['imgUrl']),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: 140,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        recommends[index]['title'],
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: black,
                            height: 1.5),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "\$ " + recommends[index]['price'],
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: grey,
                            height: 1.5),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    ),
  );
}
