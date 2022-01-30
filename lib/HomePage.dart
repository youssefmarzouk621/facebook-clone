import 'package:facebook/ProfilePage.dart';
import 'package:facebook/widgets/BottomNavbar.dart';
import 'package:facebook/widgets/GridAlbum.dart';
import 'package:facebook/widgets/Story.dart';
import 'package:facebook/widgets/createStory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime backButtonPressTime;
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            NestedScrollView(
              physics: const BouncingScrollPhysics(),
              controller: _scrollController,
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxScrolled) {
                return <Widget>[
                  SliverAppBar(
                    expandedHeight: 60,
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    // pinned: true,
                    // floating: true,
                    automaticallyImplyLeading: false,
                    flexibleSpace: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return FlexibleSpaceBar(
                          // collapseMode: CollapseMode.parallax,
                          background: GestureDetector(
                            onTap: () async {},
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(right: 15),
                                  height: 60,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      GestureDetector(
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              color: Colors.grey.shade300,
                                              borderRadius:
                                                  BorderRadius.circular(21.0)),
                                          child: Icon(
                                            CupertinoIcons.search,
                                            size: 24,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      GestureDetector(
                                        onTap: () => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ProfilePage())),
                                        child: Container(
                                            height: 42,
                                            width: 42,
                                            decoration: BoxDecoration(
                                                color: Colors.grey.shade300,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        21.0)),
                                            child: CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  "assets/photo.png"),
                                            )),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SliverAppBar(
                    automaticallyImplyLeading: false,
                    pinned: true,
                    backgroundColor: Colors.white,
                    elevation: 0,
                    stretch: true,
                    toolbarHeight: 65,
                    title: Align(
                      alignment: Alignment.centerRight,
                      child: AnimatedBuilder(
                          animation: _scrollController,
                          builder: (context, child) {
                            return GestureDetector(
                              child: AnimatedContainer(
                                width: (!_scrollController.hasClients ||
                                        _scrollController
                                                // ignore: invalid_use_of_protected_member
                                                .positions
                                                .length >
                                            1)
                                    ? MediaQuery.of(context).size.width
                                    : max(
                                        MediaQuery.of(context).size.width -
                                            _scrollController.offset
                                                .roundToDouble(),
                                        MediaQuery.of(context).size.width - 80),
                                height: 45.0,
                                duration: const Duration(milliseconds: 100),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "What's on your mind?",
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          color: Theme.of(context)
                                              .textTheme
                                              .caption
                                              .color,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ]),
                              ),
                              onTap: () => print("click"),
                            );
                          }),
                    ),
                  ),
                ];
              },
              body: Container(
                //color: Color(0xf1f1f1),
                child: SingleChildScrollView(
                  physics: NeverScrollableScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            left: 15, right: 15, top: 5, bottom: 10),
                        color: Colors.white,
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Color(0xfff55181),
                                  borderRadius: BorderRadius.circular(18),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xfff55181).withOpacity(.4),
                                      blurRadius: 5.0,
                                      offset: Offset(0, 10),
                                      // shadow direction: bottom right
                                    )
                                  ]),
                              width: 145,
                              height: 38,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    CupertinoIcons.video_camera_solid,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    "Live",
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
                                  color: Color(0xff50cf9a),
                                  borderRadius: BorderRadius.circular(18),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xff50cf9a).withOpacity(.4),
                                      blurRadius: 5.0,
                                      offset: Offset(0, 10),
                                      // shadow direction: bottom right
                                    )
                                  ]),
                              width: 145,
                              height: 38,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.photo_rounded,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    "Photo",
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
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(20)),
                              width: 56,
                              height: 38,
                              child: Icon(Icons.more_horiz),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10, left: 15, bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Stories",
                              style: TextStyle(fontSize: 26),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CreateStory(
                                    imageAsset: "assets/photo.png",
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Story(
                                    firstName: "Dhia",
                                    lastName: "Ben Hamouda",
                                    storyAsset: "assets/stories/storydhia.jpg",
                                    userAsset: "assets/dhia.jpg",
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Story(
                                    firstName: "Mehdi",
                                    lastName: "Behira",
                                    storyAsset: "assets/stories/storymehdi.jpg",
                                    userAsset: "assets/mehdi.jpg",
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Story(
                                    firstName: "Eya",
                                    lastName: "Loukil",
                                    storyAsset: "assets/stories/storyeya.jpg",
                                    userAsset: "assets/eya.jpg",
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 6,
                        child: Container(
                          color: Color(0xfff1f1f1),
                        ),
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  "assets/hassen.jpg"),
                                            ),
                                            SizedBox(
                                              width: 7,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Hassen Chouaddah",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 16),
                                                ),
                                                Text(
                                                  "24m",
                                                  style: TextStyle(
                                                      color:
                                                          Colors.grey.shade500),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                          icon: Icon(Icons.more_vert_rounded),
                                          onPressed: () => print("more")),
                                    ])),
                            SizedBox(height: 5),
                            Container(
                                padding: EdgeInsets.only(left: 15, right: 15),
                                child: Text("My colorful shots today 🐕",
                                    style: TextStyle(fontSize: 14))),
                            SizedBox(height: 5),
                            GridAlbum(
                              firstPhoto: "assets/first.png",
                              secondPhoto: "assets/green.jpg",
                              thirdPhoto: "assets/third.jpg",
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Builder(
              builder: (context) => Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                child: Image.asset(
                  "assets/logo.png",
                  height: 45,
                  width: 45,
                ),
              ),
            ),
            BottomNavbar()
          ],
        ),
      ),
    );
  }
}
