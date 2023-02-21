import 'package:abe_app/sign_In_up/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class signup extends StatelessWidget {
  const signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: SvgPicture.asset('assets/signupimage.svg'),
              ),
              SizedBox(
                width: 330,
                child: SvgPicture.asset(
                  'assets/signuptext.svg',
                  color: Colors.black87,
                ),
              ),
              const Text(
                'Sign Up',
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
                      hintText: 'First Name',
                    )),
              ),
              const SizedBox(
                width: 280,
                child: TextField(
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      hintText: 'Last Name',
                    )),
              ),
              const SizedBox(
                width: 280,
                child: TextField(
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      hintText: 'Number',
                    )),
              ),
              const SizedBox(
                width: 280,
                child: TextField(
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      hintText: 'Email',
                    )),
              ),
              const SizedBox(
                width: 280,
                child: TextField(
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      hintText: 'Password',
                    )),
              ),
              const SizedBox(
                width: 280,
                child: TextField(
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      hintText: 'Strong password',
                    )),
              ),
              const SizedBox(
                height: 15,
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
                  onPressed: () {},
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext Context) => const signin()));
                  },
                  child: SvgPicture.asset(
                    'assets/alreadyacc.svg',
                    color: Colors.black87,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
