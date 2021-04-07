import 'package:fashion_app/constants.dart';
import 'package:fashion_app/models/model.dart';
import 'package:flutter/material.dart';

Padding buildHeader() {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
    child: Row(
      children: [
        Container(
          width: 130,
          height: 130,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: NetworkImage(profileUrl), fit: BoxFit.cover)),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Daniel",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Member since 2019",
              style: TextStyle(fontSize: 13, color: black.withOpacity(0.7)),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  color: black, borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: Text(
                    "EDIT ACCOUNT",
                    style: TextStyle(fontSize: 13, color: white),
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    ),
  );
}
