import 'package:abe_app/Bottombar/bottombar.dart';
import 'package:abe_app/cupertinobottombar/cupertinobar.dart';
import 'package:abe_app/sign_In_up/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class signin extends StatelessWidget {
  const signin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Scaffold(
        body: SingleChildScrollView(
            child: Column(
        children: [
          const SizedBox(
            height: 8,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 300,
                child: SvgPicture.asset('assets/signinimage.svg'),
              ),
            ),
          ),
          const Text(
            'Sign In',
            style: TextStyle(color: Colors.black54, fontSize: 20),
          ),
          const SizedBox(
            width: 280,
            child: TextField(
                textAlignVertical: TextAlignVertical.bottom,
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  hintText: 'Email ID',
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            width: 280,
            child: TextField(
                obscureText: true,
                textAlignVertical: TextAlignVertical.bottom,
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  hintText: 'Password',
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 200),
            child: FlatButton(
              onPressed: () {},
              child: const Text(
                'Forgot Password',
                style: TextStyle(fontSize: 10),
              ),
            ),
          ),
          SizedBox(
            width: 150,
            height: 35,
            child: FlatButton(
              color: Colors.black,
              shape: RoundedRectangleBorder(
                  side: const BorderSide(
                      style: BorderStyle.solid, color: Colors.white54),
                  borderRadius: BorderRadius.circular(55)),
              onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext Context) => const bottombar()));},
              child: const Text(
                'Sign In',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          FlatButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext Context) => const signup()));
              },
              child: SvgPicture.asset(
                'assets/donthaveacc.svg',
                color: Colors.black87,
              )),
          const SizedBox(
            height: 30,
          ),
          FlatButton(
              onPressed: () {},
              child: SvgPicture.asset(
                'assets/signinwith.svg',
                color: Colors.grey,
              )),
          const SizedBox(
            height: 10,
          ),
          SvgPicture.asset('assets/faceandinsta.svg')
        ],
            ),
          ),
      ),
    );
  }
}
