import 'package:facebook/widgets/Friend.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.centerLeft,
        children: <Widget>[
          NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxScrolled) {
              return <Widget>[
                SliverAppBar(
                    automaticallyImplyLeading: false,
                    pinned: true,
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    stretch: true,
                    toolbarHeight: 67,
                    title: Text("text")),
              ];
            },
            body: Container(
              width: MediaQuery.of(context).size.width,
              child: Stack(alignment: Alignment.centerLeft, children: <Widget>[
                Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      color: Colors.blue,
                      height: 180,
                      child: Image.asset(
                        "assets/first.png",
                        height: 180,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                    )),
                Positioned(
                    left: (MediaQuery.of(context).size.width / 2) - 60,
                    top: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: Image.asset(
                        "assets/dhia.jpg",
                        height: 120,
                        width: 120,
                      ),
                    )),
                Positioned(
                    left: (MediaQuery.of(context).size.width / 2) - 60,
                    top: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: Image.asset(
                        "assets/photo.png",
                        height: 120,
                        width: 120,
                      ),
                    )),
                Positioned(
                    left: 0,
                    top: 242,
                    child: Container(
                      height: 700,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              children: [
                                Text(
                                  "Youssef Marzouk",
                                  style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "Software Engineer",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xffbbbbbb)),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "2.8K",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "followers",
                                style: TextStyle(color: Color(0xff646568)),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                "864",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "friends",
                                style: TextStyle(color: Color(0xff646568)),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xff2177ee),
                                      borderRadius: BorderRadius.circular(18),
                                      boxShadow: [
                                        BoxShadow(
                                          color:
                                              Color(0xff2177ee).withOpacity(.4),
                                          blurRadius: 5.0,
                                          offset: Offset(0, 10),
                                          // shadow direction: bottom right
                                        )
                                      ]),
                                  width: 145,
                                  height: 38,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.person_add_rounded,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        "Add friend",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xffeff0f1),
                                      borderRadius: BorderRadius.circular(18),
                                      boxShadow: [
                                        BoxShadow(
                                          color:
                                              Color(0xffeff0f1).withOpacity(.4),
                                          blurRadius: 5.0,
                                          offset: Offset(0, 10),
                                          // shadow direction: bottom right
                                        )
                                      ]),
                                  width: 145,
                                  height: 38,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Iconsax.message5,
                                        color: Colors.black,
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        "Message",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Container(
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade300,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    width: 56,
                                    height: 38,
                                    child: Icon(Icons.more_horiz)),
                              ]),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: EdgeInsets.all(18),
                            width: MediaQuery.of(context).size.width,
                            color: Color(0xffeff0f2),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 3, bottom: 3),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Iconsax.location5,
                                        color: Color(0xff80889b),
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        "From Tunis, Tunisia ",
                                        style: TextStyle(fontSize: 16),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 3, bottom: 3),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Image.asset(
                                        "assets/insta_logo.png",
                                        height: 20,
                                        width: 20,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "youssef.marzouk0",
                                        style: TextStyle(fontSize: 16),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 3, bottom: 3),
                                  child: Row(
                                    children: [
                                      Icon(Iconsax.personalcard,
                                          color: Color(0xff80889b)),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        "See full Youssef's About Info ",
                                        style: TextStyle(fontSize: 16),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Friends",
                                        style: TextStyle(
                                            fontSize: 26,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        "864 · 3 Mutual friends",
                                        style: TextStyle(
                                          color: Color(0xffacacae),
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xffeff0f1),
                                        borderRadius: BorderRadius.circular(18),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0xffeff0f1)
                                                .withOpacity(.4),
                                            blurRadius: 5.0,
                                            offset: Offset(0, 10),
                                            // shadow direction: bottom right
                                          )
                                        ]),
                                    width: (MediaQuery.of(context).size.width /
                                            2) -
                                        50,
                                    height: 38,
                                    child: Center(
                                      child: Text(
                                        "See all friends",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                          Container(
                            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Friend(
                                    firstName: "Tarek",
                                    lastName: "Loukil",
                                    userAsset: "assets/tarek.jpg",
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Friend(
                                    firstName: "Ghassen",
                                    lastName: "Boughzala",
                                    userAsset: "assets/ghassen.jpg",
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Friend(
                                    firstName: "Hassen",
                                    lastName: "Chouaddah",
                                    userAsset: "assets/hassen.jpg",
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Friend(
                                    firstName: "Aziz",
                                    lastName: "Ammar",
                                    userAsset: "assets/aziz.jpg",
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ))
              ]),
            ),
          ),
          Positioned(
              left: 0,
              top: 0,
              child: Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 2.0,
                    offset: Offset(0, 2),
                    // shadow direction: bottom right
                  )
                ]),
                padding: EdgeInsets.fromLTRB(10, 25, 10, 5),
                height: 90,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    GestureDetector(
                        child: Icon(Icons.arrow_back),
                        onTap: () => Navigator.pop(context)),
                    SizedBox(
                      width: 5,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 54,
                      height: 40.0,
                      padding: EdgeInsets.all(10),
                      // margin: EdgeInsets.zero,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.0),
                        color: Colors.grey.shade300,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 3.0,
                            offset: Offset(1, 1),
                            // shadow direction: bottom right
                          )
                        ],
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Iconsax.search_normal,
                                  color: Color(0xff65676b),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "Search",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Color(0xff65676b),
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ]),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
