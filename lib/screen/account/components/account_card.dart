import 'package:fashion_app/constants.dart';
import 'package:flutter/material.dart';

class AccountCard extends StatelessWidget {
  final String title;
  const AccountCard({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 16),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: black.withOpacity(0.5),
                size: 17,
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Divider(
            color: grey.withOpacity(0.8),
          )
        ],
      ),
    );
  }
}
