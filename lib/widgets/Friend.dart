import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Friend extends StatelessWidget {
  final String userAsset;
  final String firstName;
  final String lastName;
  const Friend({
    @required this.userAsset,
    @required this.firstName,
    @required this.lastName,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        width: 90,
        height: 165,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: <Widget>[
            Positioned(
                left: 0,
                top: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  child: Image.asset(
                    userAsset,
                    width: 90,
                    height: 102,
                    fit: BoxFit.cover,
                  ),
                )),
            Positioned(
              left: 0,
              top: 110,
              child: Container(
                width: 90,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      firstName,
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    ),
                    Text(lastName,
                        style: TextStyle(fontSize: 12, color: Colors.black)),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
