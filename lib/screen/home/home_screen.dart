import 'package:fashion_app/components/footer.dart';
import 'package:fashion_app/constants.dart';
import 'package:fashion_app/screen/home/components/body.dart';
import 'package:fashion_app/size_config.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: white,
      body: Body(),
      bottomNavigationBar: Footer(),
    );
  }
}
