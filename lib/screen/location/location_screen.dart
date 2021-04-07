import 'package:fashion_app/components/footer.dart';
import 'package:fashion_app/constants.dart';
import 'package:fashion_app/screen/location/components/body.dart';
import 'package:flutter/material.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Body(),
      bottomNavigationBar: Footer(
        currentId: 1,
      ),
    );
  }
}
