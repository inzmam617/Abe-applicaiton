import 'package:abe_app/Comm_Commercial_pages/Community.dart';

import 'package:abe_app/home/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../Comm_Commercial_pages/Commercial.dart';
// import this

class userpageone extends StatefulWidget {
  const userpageone({Key? key}) : super(key: key);

  @override
  State<userpageone> createState() => _userpageoneState();
}

class _userpageoneState extends State<userpageone> {
  //final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void colorchange() {}

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Scaffold(

       // key: _scaffoldKey,
        endDrawer: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
          child: Drawer(
            width: MediaQuery.of(context).size.width / 1.5,
            child: ListView(children: [
              const SizedBox(
                height: 50,
              ),
              ListTile(

                leading: IconButton(
                  icon: const Icon(Icons.exit_to_app),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              )

            ]),
          ),
        ),
        // Drawer(
        //   shape: Border.all(),
        //   // Add a ListView to the drawer. This ensures the user can scroll
        //   // through the options in the drawer if there isn't enough vertical
        //   // space to fit everything.
        //   child: ListView(
        //     // Important: Remove any padding from the ListView.
        //     padding: EdgeInsets.zero,
        //     children: [
        //       SizedBox(height: 30,),
        //       ListTile(
        //         title: const Text('Item 1'),
        //         onTap: () {
        //           // Update the state of the app
        //           // ...
        //           // Then close the drawer
        //           Navigator.pop(context);
        //         },
        //       ),
        //       ListTile(
        //         title: const Text('Item 2'),
        //         onTap: () {
        //           // Update the state of the app
        //           // ...
        //           // Then close the drawer
        //           Navigator.pop(context);
        //         },
        //       ),
        //     ],
        //   ),
        // ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 45,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext Context) => const home()));
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
                    const SizedBox(
                      width: 130,
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Container(
                            height: 35, width: 35,
                            decoration:
                                const BoxDecoration(boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.black54,
                                blurRadius: 5.0,
                                //offset: Offset(0.0, 0.75)
                              )
                            ], color: Colors.white, shape: BoxShape.circle),
                            //color: Colors.black54,
                            child: SvgPicture.asset(
                              'assets/search.svg',
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Container(
                            height: 35, width: 30,
                            decoration:
                                const BoxDecoration(boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.black54,
                                blurRadius: 5.0,
                                //offset: Offset(0.0, 0.75)
                              )
                            ], color: Colors.white, shape: BoxShape.circle),
                            //color: Colors.black54,
                            child: SvgPicture.asset('assets/bell.svg',
                                fit: BoxFit.scaleDown),
                          ),
                        ),
                        Builder(
                          builder: (BuildContext context) { return   IconButton(
                            onPressed: () {
                              Scaffold.of(context).openEndDrawer();
                            },
                            icon: Container(
                              //height: 40, width: 35,
                                decoration:
                                const BoxDecoration(boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    color: Colors.black54,
                                    blurRadius: 5.0,
                                    //offset: Offset(0.0, 0.75)
                                  )
                                ], shape: BoxShape.circle),
                                //color: Colors.black54,
                                child: ClipOval(
                                  child: SizedBox.fromSize(
                                    size: const Size.fromRadius(48),
                                    // Image radius
                                    child: Image.asset('assets/profile.jpg',
                                        fit: BoxFit.cover),
                                  ),
                                )),
                          ); },

                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 100,
                width: 320,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 5,
                        color: Colors.grey,
                      )
                    ],
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
                child: SvgPicture.asset(
                  'assets/goodmorning.svg',
                  fit: BoxFit.scaleDown,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    SizedBox(
                      width: 160,
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
                      width: 160,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
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
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 320,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey[100]),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 60),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: SizedBox(
                                    width: 140,
                                    child:
                                        SvgPicture.asset('assets/quote.svg')),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Align(
                                  alignment: Alignment.topLeft,
                                  child: SizedBox(
                                      width: 210,
                                      child: SvgPicture.asset(
                                          'assets/valuetext.svg'))),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                            height: 55,
                            width: 60,
                            decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3,
                                  color: Colors.black87,
                                )
                              ],
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/bill.jpg",
                                  ),
                                  fit: BoxFit.cover),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(width: 330, height: 0.2, color: Colors.black87),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'New Aquaintance',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'View All',
                              style: TextStyle(fontSize: 8, color: Colors.grey),
                            ))
                      ],
                    ),
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
                              onPressed: () {},
                              icon: ClipOval(
                                child: SizedBox.fromSize(
                                  size: const Size.fromRadius(48),
                                  // Image radius
                                  child: Image.asset('assets/cara.jpg',
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                const Text(
                                  'Cara',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                const SizedBox(
                                  width: 7,
                                ),
                                SvgPicture.asset('assets/addfr.svg')
                              ],
                            )
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
                            Row(
                              children: [
                                const Text(
                                  'itIsTimmy',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                const SizedBox(
                                  width: 7,
                                ),
                                SvgPicture.asset('assets/addfr.svg')
                              ],
                            )
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
                            Row(
                              children: [
                                const Text(
                                  'tsm',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                const SizedBox(
                                  width: 7,
                                ),
                                SvgPicture.asset('assets/addfr.svg')
                              ],
                            )
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
                            Row(
                              children: [
                                const Text(
                                  'Zoe',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                const SizedBox(
                                  width: 7,
                                ),
                                SvgPicture.asset('assets/addfr.svg')
                              ],
                            )
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
                            Row(
                              children: [
                                const Text(
                                  'Frank',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                const SizedBox(
                                  width: 7,
                                ),
                                SvgPicture.asset('assets/addfr.svg')
                              ],
                            )
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
                            Row(
                              children: [
                                const Text(
                                  'Elliot',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                const SizedBox(
                                  width: 7,
                                ),
                                SvgPicture.asset('assets/addfr.svg')
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                        width: double.infinity,
                        height: 0.2,
                        color: Colors.black87),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Pages',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'View All',
                              style: TextStyle(fontSize: 8, color: Colors.grey),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Container(
                                height: 70,
                                width: 100,
                                decoration: const BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 1,
                                      color: Colors.blueGrey,
                                    )
                                  ],
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/cnn.jpg",
                                      ),
                                      fit: BoxFit.cover),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                )),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'CNN',
                                  style: TextStyle(color: Colors.black87),
                                ))
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Container(
                                height: 70,
                                width: 100,
                                decoration: const BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 1,
                                      color: Colors.blueGrey,
                                    )
                                  ],
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/createex.jpg",
                                      ),
                                      fit: BoxFit.cover),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                )),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Createex',
                                  style: TextStyle(color: Colors.black87),
                                ))
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Container(
                                height: 70,
                                width: 100,
                                decoration: const BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 1,
                                      color: Colors.blueGrey,
                                    )
                                  ],
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/rockstar.jpeg",
                                      ),
                                      fit: BoxFit.cover),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                )),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'RockStar',
                                  style: TextStyle(color: Colors.black87),
                                ))
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Container(
                                height: 70,
                                width: 100,
                                decoration: const BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 1,
                                      color: Colors.blueGrey,
                                    )
                                  ],
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/artisia.jpg",
                                      ),
                                      fit: BoxFit.cover),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                )),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Artisia',
                                  style: TextStyle(color: Colors.black87),
                                ))
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Container(
                                height: 70,
                                width: 100,
                                decoration: const BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 1,
                                      color: Colors.blueGrey,
                                    )
                                  ],
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/disco.jpg",
                                      ),
                                      fit: BoxFit.cover),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                )),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Artisia',
                                  style: TextStyle(color: Colors.black87),
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                        width: double.infinity,
                        height: 0.2,
                        color: Colors.black87),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Notifications',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'View All',
                              style: TextStyle(fontSize: 8, color: Colors.grey),
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 65,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          height: 55,
                          width: 140,
                          decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 0.9, color: Colors.blueAccent)
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 5,
                              ),
                              SizedBox(
                                  height: 50,
                                  width: 50,
                                  // decoration: BoxDecoration(
                                  //     borderRadius: BorderRadius.circular(100)),
                                  child: ClipOval(
                                    child: SizedBox.fromSize(
                                      size: const Size.fromRadius(48),
                                      // Image radius
                                      child: Image.asset('assets/bill.jpg',
                                          fit: BoxFit.cover),
                                    ),
                                  )),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 23, left: 5),
                                child: Column(
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(right: 10),
                                      child: Text(
                                        'Jane D',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 15),
                                      ),
                                    ),
                                    Text(
                                      'Followed by Createex',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 6),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 55,
                          width: 140,
                          decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 0.9, color: Colors.blueAccent)
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 5,
                              ),
                              SizedBox(
                                  height: 50,
                                  width: 50,
                                  // decoration: BoxDecoration(
                                  //     borderRadius: BorderRadius.circular(100)),
                                  child: ClipOval(
                                    child: SizedBox.fromSize(
                                      size: const Size.fromRadius(48),
                                      // Image radius
                                      child: Image.asset('assets/bill.jpg',
                                          fit: BoxFit.cover),
                                    ),
                                  )),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 23, left: 5),
                                child: Column(
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(right: 10),
                                      child: Text(
                                        'Jane D',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 15),
                                      ),
                                    ),
                                    Text(
                                      'Followed by Createex',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 6),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 55,
                          width: 140,
                          decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 0.9, color: Colors.blueAccent)
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 5,
                              ),
                              SizedBox(
                                  height: 50,
                                  width: 50,
                                  // decoration: BoxDecoration(
                                  //     borderRadius: BorderRadius.circular(100)),
                                  child: ClipOval(
                                    child: SizedBox.fromSize(
                                      size: const Size.fromRadius(48),
                                      // Image radius
                                      child: Image.asset('assets/bill.jpg',
                                          fit: BoxFit.cover),
                                    ),
                                  )),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 23, left: 5),
                                child: Column(
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(right: 10),
                                      child: Text(
                                        'Jane D',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 15),
                                      ),
                                    ),
                                    Text(
                                      'Followed by Createex',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 6),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 55,
                          width: 140,
                          decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 0.9, color: Colors.blueAccent)
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 5,
                              ),
                              SizedBox(
                                  height: 50,
                                  width: 50,
                                  // decoration: BoxDecoration(
                                  //     borderRadius: BorderRadius.circular(100)),
                                  child: ClipOval(
                                    child: SizedBox.fromSize(
                                      size: const Size.fromRadius(48),
                                      // Image radius
                                      child: Image.asset('assets/bill.jpg',
                                          fit: BoxFit.cover),
                                    ),
                                  )),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 23, left: 5),
                                child: Column(
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(right: 10),
                                      child: Text(
                                        'Jane D',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 15),
                                      ),
                                    ),
                                    Text(
                                      'Followed by Createex',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 6),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
