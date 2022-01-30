import 'package:flutter/material.dart';

class GridAlbum extends StatelessWidget {
  final String firstPhoto;
  final String secondPhoto;
  final String thirdPhoto;
  const GridAlbum(
      {@required this.firstPhoto,
      @required this.secondPhoto,
      @required this.thirdPhoto});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 450,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 450,
            width: MediaQuery.of(context).size.width / 2 - 2,
            child: Image.asset(
              firstPhoto,
              height: 450,
              width: MediaQuery.of(context).size.width / 2 - 2,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 4),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 223,
                width: MediaQuery.of(context).size.width / 2 - 2,
                child: Image.asset(
                  secondPhoto,
                  height: 255,
                  width: MediaQuery.of(context).size.width / 2 - 2,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 4),
              Container(
                height: 223,
                width: MediaQuery.of(context).size.width / 2 - 2,
                child: Image.asset(
                  thirdPhoto,
                  height: 255,
                  width: MediaQuery.of(context).size.width / 2 - 2,
                  fit: BoxFit.cover,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
