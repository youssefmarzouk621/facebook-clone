import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int pressed = 1;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 5.0,
                offset: Offset(1.5, 1.5),
                // shadow direction: bottom right
              )
            ],
            borderRadius: BorderRadius.circular(30.0),
            color: Color(0xffeefcfd),
          ),
          height: 60,
          child: Container(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => setState(() => pressed = 1),
                    child: Container(
                      child: Icon(
                        Icons.home,
                        color: (pressed == 1)
                            ? Color(0xff2677ed)
                            : Color(0xff97a5bf),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => setState(() => pressed = 2),
                    child: Container(
                      child: Icon(
                        Icons.play_circle_filled_rounded,
                        color: (pressed == 2)
                            ? Color(0xff2677ed)
                            : Color(0xff97a5bf),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => setState(() => pressed = 3),
                    child: Container(
                      child: Icon(
                        Icons.shopping_cart_rounded,
                        color: (pressed == 3)
                            ? Color(0xff2677ed)
                            : Color(0xff97a5bf),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => setState(() => pressed = 4),
                    child: Container(
                        child: Icon(
                      Icons.notifications,
                      color: (pressed == 4)
                          ? Color(0xff2677ed)
                          : Color(0xff97a5bf),
                    )),
                  ),
                  GestureDetector(
                    onTap: () => setState(() => pressed = 5),
                    child: Container(
                      child: Icon(
                        Icons.menu_rounded,
                        color: (pressed == 5)
                            ? Color(0xff2677ed)
                            : Color(0xff97a5bf),
                      ),
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
