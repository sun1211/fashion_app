import 'package:fashion_app/constants.dart';
import 'package:fashion_app/models/model.dart';
import 'package:flutter/material.dart';

SingleChildScrollView buildCategory() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: List.generate(
        categories.length,
        (index) {
          return Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Container(
              width: 180,
              height: 220,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(categories[index]['imgUrl']),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: black.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  Positioned(
                    bottom: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        categories[index]['title'],
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    ),
  );
}
