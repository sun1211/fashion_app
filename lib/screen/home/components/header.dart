import 'package:fashion_app/constants.dart';
import 'package:fashion_app/models/model.dart';
import 'package:fashion_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

Stack buildHeader() {
  return Stack(
    children: [
      //home image
      Container(
        width: SizeConfig.screenWidth,
        height: 500,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(homeImg),
            fit: BoxFit.cover,
          ),
        ),
      ),
      //icons
      Padding(
        padding: const EdgeInsets.only(top: 35, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              Icons.favorite,
              color: white,
              size: 28,
            ),
            SizedBox(
              width: 15,
            ),
            Icon(
              Feather.search,
              color: white,
              size: 25,
            ),
          ],
        ),
      ),
      //title
      Positioned(
        bottom: 20,
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Winter Collection",
                  style: TextStyle(
                      fontSize: 25, color: white, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text("DISCOVER",
                      style: TextStyle(
                          fontSize: 15,
                          color: white,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: white,
                    size: 18,
                  ),
                ],
              )
            ],
          ),
        ),
      )
    ],
  );
}
