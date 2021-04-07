import 'package:fashion_app/constants.dart';
import 'package:fashion_app/models/model.dart';
import 'package:fashion_app/screen/home/home_screen.dart';
import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  Footer({Key key}) : super(key: key);

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  int activeTab = 0;
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
                  color: activeTab == index ? accent : black,
                ),
                onPressed: () {
                  setState(
                    () {
                      activeTab = index;
                    },
                  );
                  switch (activeTab) {
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
                      print(index);
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
