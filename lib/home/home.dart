import 'package:abe_app/home/pageone.dart';
import 'package:abe_app/home/pagethree.dart';
import 'package:abe_app/home/pagetwo.dart';
import 'package:flutter/material.dart';
class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    //final PageController pageController = PageController(initialPage: 0);
    return PageView(
      children: const [
        pageone(),
        pagetwo(),
        pagethree()
      ],
    );
  }
}