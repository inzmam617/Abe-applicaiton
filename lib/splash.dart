import 'dart:async';
import 'package:abe_app/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 3),() => Navigator.of(context).push(MaterialPageRoute(
        builder:(BuildContext  Context) => const home()))
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: SvgPicture.asset('assets/logo.svg')),
    );
  }
}
