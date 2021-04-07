import 'package:fashion_app/models/model.dart';
import 'package:flutter/material.dart';

import 'account_card.dart';
import 'header.dart';
import 'menu_bar.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          buildHeader(),
          SizedBox(
            height: 40,
          ),
          MenuBar(),
          SizedBox(
            height: 30,
          ),
          Divider(
            thickness: 1,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Column(
              children: List.generate(
                accountList.length,
                (index) {
                  return AccountCard(
                    title: accountList[index],
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
