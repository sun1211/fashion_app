import 'package:fashion_app/constants.dart';
import 'package:fashion_app/models/model.dart';
import 'package:fashion_app/screen/account/account_screen.dart';
import 'package:fashion_app/screen/card/card_sreen.dart';
import 'package:fashion_app/screen/home/home_screen.dart';
import 'package:fashion_app/screen/location/location_screen.dart';
import 'package:fashion_app/screen/more/more_screen.dart';
import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  int currentId = 0;
  Footer({Key key, this.currentId}) : super(key: key);

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: white,
        border: Border(
          top: BorderSide(
            color: grey.withOpacity(0.2),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            itemsTab.length,
            (index) {
              return IconButton(
                icon: Icon(
                  itemsTab[index]['icon'],
                  size: itemsTab[index]['size'],
                  color: widget.currentId == index ? accent : black,
                ),
                onPressed: () {
                  switch (index) {
                    case 0:
                      print('home screen $index');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
                      );
                      break;
                    case 1:
                      print('location screen $index');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LocationScreen(),
                        ),
                      );
                      break;
                    case 2:
                      print('account screen $index');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AccountScreen(),
                        ),
                      );
                      break;
                    case 3:
                      print('card screen $index');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CardScreen(),
                        ),
                      );
                      break;
                    case 4:
                      print('more screen $index');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MoreScreen(),
                        ),
                      );
                      break;

                    default:
                  }
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
