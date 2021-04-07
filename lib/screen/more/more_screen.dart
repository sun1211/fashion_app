import 'package:fashion_app/components/footer.dart';
import 'package:fashion_app/constants.dart';
import 'package:fashion_app/screen/more/components/body.dart';
import 'package:flutter/material.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Body(),
      bottomNavigationBar: Footer(
        currentId: 4,
      ),
    );
  }
}
