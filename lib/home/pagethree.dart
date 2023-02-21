import 'package:abe_app/sign_In_up/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class pagethree extends StatefulWidget {
  const pagethree({Key? key}) : super(key: key);

  @override
  State<pagethree> createState() => _pagethreeState();
}

class _pagethreeState extends State<pagethree> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Image(
          image: AssetImage('assets/image3.png'),
          fit: BoxFit.cover,
          height: 500,
          width: double.infinity,
          alignment: Alignment.center,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 450),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height /2,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            topRight: Radius.circular(60))),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 8,
                        ),
                        SvgPicture.asset('assets/scroll3.svg'),
                        const SizedBox(
                          height: 15,
                        ),
                        SvgPicture.asset('assets/text1.svg'),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 20, left: 20, top: 20),
                          child: SvgPicture.asset(
                            'assets/text2.svg',
                            color: Colors.black,
                          ),
                        ),
                        FlatButton(
                          child: SvgPicture.asset('assets/next2.svg'),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext Context) => const signin()));
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
