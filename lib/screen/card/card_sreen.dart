import 'package:fashion_app/components/footer.dart';
import 'package:fashion_app/constants.dart';
import 'package:fashion_app/screen/card/components/body.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      bottomNavigationBar: Footer(
        currentId: 3,
      ),
      body: Body(),
    );
  }
}
