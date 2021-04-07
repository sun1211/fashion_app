import 'package:fashion_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuBar extends StatelessWidget {
  const MenuBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                FontAwesomeIcons.box,
                color: black,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Orders",
                style: TextStyle(fontSize: 15),
              )
            ],
          ),
          Row(
            children: [
              Icon(
                FontAwesomeIcons.mapMarkerAlt,
                color: black,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "My Address",
                style: TextStyle(fontSize: 15),
              )
            ],
          ),
          Row(
            children: [
              Icon(
                FontAwesomeIcons.cog,
                color: black,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Setttings",
                style: TextStyle(fontSize: 15),
              )
            ],
          ),
        ],
      ),
    );
  }
}
