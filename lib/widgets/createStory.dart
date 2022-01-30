import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateStory extends StatelessWidget {
  final String imageAsset;
  const CreateStory({@required this.imageAsset});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xff2e80ec),
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
                    imageAsset,
                    width: 90,
                    height: 102,
                    fit: BoxFit.cover,
                  ),
                )),
            Positioned(
              left: 28,
              top: 86,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                width: 34,
                height: 34,
                child: Icon(
                  CupertinoIcons.add,
                  color: Color(0xff2e80ec),
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 127,
              child: Container(
                width: 90,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Create",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    Text("Story",
                        style: TextStyle(fontSize: 12, color: Colors.white)),
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
