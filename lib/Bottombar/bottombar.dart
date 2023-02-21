import 'package:abe_app/Bottombar/bottombarpages/userapgethree.dart';
import 'package:abe_app/Bottombar/bottombarpages/userpagefive.dart';
import 'package:abe_app/Bottombar/bottombarpages/userpagefour.dart';
import 'package:abe_app/Bottombar/bottombarpages/userpageone.dart';
import 'package:abe_app/Bottombar/bottombarpages/userpagetwo.dart';
import 'package:abe_app/my_icons_icons.dart';
import 'package:flutter/material.dart';

class bottombar extends StatefulWidget {
  const bottombar({Key? key}) : super(key: key);

  @override
  State<bottombar> createState() => _bottombarState();
}

class _bottombarState extends State<bottombar> {

  int itemindex = 0;

  void getindex(int index) {
    setState(() {
      itemindex = index;
    });
  }

  final List<Widget> pages =  const [
    userpageone(),
    userpagetwo(),
    userpagethree(),
    userpagefour(),
    userpagefive(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                    color: Colors.blue.shade200,
                    spreadRadius: 0,
                    blurRadius: 0.1),
              ],
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(30.0),
              ),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                selectedItemColor: Colors.black,
                unselectedItemColor: Colors.grey,
                onTap: getindex,
                currentIndex: itemindex,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(
                        MyIcons.safari,
                        size: 20,
                      ),
                      label: 'Safari'),

                  // icon: SvgPicture.asset('assets/safari.svg'),label: 'Safari'),
                  BottomNavigationBarItem(
                      backgroundColor: Colors.blue,
                      icon: Icon(
                        MyIcons.messege,
                        size: 20,
                      ),
                      label: 'Message'),
                  BottomNavigationBarItem(
                      icon: Icon(
                        MyIcons.home,
                        size: 20,
                      ),
                      label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.search_rounded,
                        size: 20,
                      ),
                      label: 'Search'),
                  BottomNavigationBarItem(
                      icon: Icon(
                        MyIcons.more,
                        size: 15,
                      ),
                      label: 'More'),
                ],
              ),
            )),
      ),
      body: pages[itemindex],
    );
  }
}
