import 'package:abe_app/Comm_Commercial_pages/Commity_peoples/commpage1.dart';
import 'package:abe_app/comm_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Bottombar/bottombar.dart';
import 'Commercial.dart';

class community extends StatefulWidget {
  const community({Key? key}) : super(key: key);

  @override
  State<community> createState() => _communityState();
}

class _communityState extends State<community> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext Context) =>
                                const bottombar()));
                      },
                      icon: Container(
                        decoration: const BoxDecoration(boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.black54,
                            blurRadius: 5.0,
                            //offset: Offset(0.0, 0.75)
                          )
                        ], color: Colors.white, shape: BoxShape.circle),
                        //color: Colors.black54,
                        child: SvgPicture.asset('assets/arrow.svg'),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    const Text("Jaguar"),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.brown),
                            shape: BoxShape.circle),
                        height: 40,
                        width: 40,
                        // decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(100)),
                        child: ClipOval(
                          child: SizedBox.fromSize(
                            size: const Size.fromRadius(48), // Image radius
                            child: Image.asset('assets/profile.jpg',
                                fit: BoxFit.cover),
                          ),
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                )
              ]),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.46,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed)) {
                                return Colors.green;
                              } else {
                                return Colors.black;
                              }
                            },
                          ),
                          //Background Color
                          elevation: MaterialStateProperty.all(5),
                          //Defines Elevation
                          shadowColor: MaterialStateProperty.all(
                              Colors.grey), //Defines shadowColor
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext Context) =>
                                  const comercial()));
                        },
                        child: const Text('COMERCIAL',
                            style: TextStyle(color: Colors.white))),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.46,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed)) {
                                return Colors.red;
                              } else {
                                return Colors.white;
                              }
                            },
                          ),
                          //Background Color
                          elevation: MaterialStateProperty.all(5),
                          //Defines Elevation
                          shadowColor: MaterialStateProperty.all(
                              Colors.grey), //Defines shadowColor
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext Context) =>
                                  const community()));
                        },
                        child: const Text('COMMUNITY',
                            style: TextStyle(color: Colors.grey))),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const SizedBox(
                      width: 3,
                    ),
                    Column(
                      children: [
                        IconButton(
                          iconSize: 80,
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext Context) =>
                                    const commpageone()));
                          },
                          icon: ClipOval(
                            child: SizedBox.fromSize(
                              size: const Size.fromRadius(48),
                              // Image radius
                              child: Image.asset('assets/profile.jpg',
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        const Text(
                          'Jaguar',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          iconSize: 80,
                          onPressed: () {},
                          icon: ClipOval(
                            child: SizedBox.fromSize(
                              size: const Size.fromRadius(48),
                              // Image radius
                              child: Image.asset('assets/timmy.jpg',
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        const Text(
                          'itIsTimmy',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          iconSize: 80,
                          onPressed: () {},
                          icon: ClipOval(
                            child: SizedBox.fromSize(
                              size: const Size.fromRadius(48),
                              // Image radius
                              child: Image.asset('assets/tsm.jpg',
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        const Text(
                          'tsm',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          iconSize: 80,
                          onPressed: () {},
                          icon: ClipOval(
                            child: SizedBox.fromSize(
                              size: const Size.fromRadius(48),
                              // Image radius
                              child: Image.asset('assets/zoe.jpg',
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        const Text(
                          'Zoe',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          iconSize: 80,
                          onPressed: () {},
                          icon: ClipOval(
                            child: SizedBox.fromSize(
                              size: const Size.fromRadius(48),
                              // Image radius
                              child: Image.asset('assets/frank.png',
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        const Text(
                          'Frank',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          iconSize: 80,
                          onPressed: () {},
                          icon: ClipOval(
                            child: SizedBox.fromSize(
                              size: const Size.fromRadius(48),
                              // Image radius
                              child: Image.asset('assets/elliot.png',
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        const Text(
                          'Elliot',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          shape: BoxShape.circle),
                      height: 45,
                      width: 45,
                      // decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(100)),
                      child: ClipOval(
                        child: SizedBox.fromSize(
                          size: const Size.fromRadius(48), // Image radius
                          child: Image.asset('assets/profile.jpg',
                              fit: BoxFit.cover),
                        ),
                      )),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: SizedBox(
                        height: 35,
                        child: Material(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          shadowColor: Colors.black,
                          elevation: 4,
                          child: TextFormField(
                            textAlignVertical: TextAlignVertical.bottom,
                            decoration: InputDecoration(
                              hintStyle: TextStyle(
                                  color: Colors.grey.shade600, fontSize: 13),
                              hintText: 'What do you want to talk about?',
                              border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.brown),
                                    shape: BoxShape.circle),
                                height: 30,
                                width: 30,
                                // decoration: BoxDecoration(
                                //     borderRadius: BorderRadius.circular(100)),
                                child: ClipOval(
                                  child: SizedBox.fromSize(
                                    size: const Size.fromRadius(
                                        48), // Image radius
                                    child: Image.asset('assets/Jane.jpg',
                                        fit: BoxFit.cover),
                                  ),
                                )),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              'Jane',
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black54),
                            )
                          ],
                        )),
                    const SizedBox(
                      height: 5,
                    ),
                    Material(
                      elevation: 10,
                      borderRadius: const BorderRadius.all(Radius.circular(25)),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white),
                        height: 250,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            'assets/janepostcomm.jpg'),
                                        fit: BoxFit.cover)),
                                height: 180,
                                width: MediaQuery.of(context).size.width * 0.9,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '1,040',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Comm.messege,
                                    color: Color(0xffC7E2E6),
                                    size: 18,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '54',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Comm.send,
                                    color: Color(0xffC7E2E6),
                                    size: 18,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.brown),
                                    shape: BoxShape.circle),
                                height: 30,
                                width: 30,
                                // decoration: BoxDecoration(
                                //     borderRadius: BorderRadius.circular(100)),
                                child: ClipOval(
                                  child: SizedBox.fromSize(
                                    size: const Size.fromRadius(
                                        48), // Image radius
                                    child: Image.asset('assets/tesla.jpg',
                                        fit: BoxFit.cover),
                                  ),
                                )),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              'Tesla',
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black54),
                            )
                          ],
                        )),
                    const SizedBox(
                      height: 5,
                    ),
                    Material(
                      elevation: 10,
                      borderRadius: const BorderRadius.all(Radius.circular(25)),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white),
                        height: 220,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    image: const DecorationImage(
                                        image:
                                            AssetImage('assets/teslacar.jpeg'),
                                        fit: BoxFit.cover)),
                                height: 180,
                                width: MediaQuery.of(context).size.width * 0.9,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
