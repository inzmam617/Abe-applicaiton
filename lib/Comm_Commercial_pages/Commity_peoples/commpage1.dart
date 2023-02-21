import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../partner_icons.dart';
import '../Community.dart';

class commpageone extends StatefulWidget {
  const commpageone({Key? key}) : super(key: key);

  @override
  State<commpageone> createState() => _commpageoneState();
}

class _commpageoneState extends State<commpageone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const SizedBox(
                height: 35,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext Context) => const community()));
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
              const SizedBox(
                height: 40,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[100],
                ),
                height: 180,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage('assets/profile.jpg'),
                              fit: BoxFit.cover)),
                      height: 180,
                      width: 120,
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 3, right: 3),
                          child: Material(
                            borderRadius: BorderRadius.circular(180),
                            elevation: 3,
                            child: Container(
                              height: 45,
                              width: 45,
                              decoration: const BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              child: SizedBox(
                                child: Center(
                                  child: SvgPicture.asset(
                                    'assets/medal.svg',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                      ),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 33),
                            child: Text(
                              'Johnson Stone',
                              style: TextStyle(
                                  color: Color(0xff33393a),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 40),
                            child: Text(
                              'Buisness Consultant',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 70),
                            child: Row(
                              children: [
                                SizedBox(
                                  child: SvgPicture.asset(
                                      'assets/commfriends.svg'),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  'Community',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Row(
                              children: const [
                                Text(
                                  'Acquaintances',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 13),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '876,4456',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 8,
                              ),
                              Stack(
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            boxShadow: const [
                                              BoxShadow(
                                                blurRadius: 1.0,
                                                color: Colors.black,
                                              )
                                            ]),
                                        width: 55,
                                        height: 18,
                                        padding: const EdgeInsets.only(
                                            left: 25, top: 2),
                                        child: const SizedBox(
                                            child: Text(
                                          '15.3',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 12),
                                        )),
                                      ),
                                      Transform.translate(
                                          offset: const Offset(-2, 0),
                                          child: Material(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            elevation: 10,
                                            child: Container(
                                              height: 18,
                                              width: 25,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25)),
                                              child: SvgPicture.asset(
                                                  'assets/offermoney.svg',
                                                  fit: BoxFit.scaleDown),
                                            ),
                                          ))
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Stack(
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            boxShadow: const [
                                              BoxShadow(
                                                blurRadius: 1.0,
                                                color: Colors.black,
                                              )
                                            ]),
                                        width: 55,
                                        height: 18,
                                        padding: const EdgeInsets.only(
                                            left: 25, top: 2),
                                        child: const SizedBox(
                                            child: Text(
                                          '15.3',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 12),
                                        )),
                                      ),
                                      Transform.translate(
                                          offset: const Offset(-2, 0),
                                          child: Material(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            elevation: 10,
                                            child: Container(
                                              height: 18,
                                              width: 25,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25)),
                                              child: SvgPicture.asset(
                                                  'assets/coins.svg',
                                                  fit: BoxFit.scaleDown),
                                            ),
                                          ))
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Stack(
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            boxShadow: const [
                                              BoxShadow(
                                                blurRadius: 1.0,
                                                color: Colors.black,
                                              )
                                            ]),
                                        width: 55,
                                        height: 18,
                                        padding: const EdgeInsets.only(
                                            left: 25, top: 2),
                                        child: const SizedBox(
                                            child: Text(
                                          '15.3',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 12),
                                        )),
                                      ),
                                      Transform.translate(
                                          offset: const Offset(-2, 0),
                                          child: Material(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            elevation: 10,
                                            child: Container(
                                              height: 18,
                                              width: 25,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25)),
                                              child: SvgPicture.asset(
                                                  'assets/shake.svg',
                                                  fit: BoxFit.scaleDown),
                                            ),
                                          ))
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 35,
                width: 330,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(blurRadius: 2.0, color: Colors.grey)
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24.0),
                          boxShadow: const [
                            BoxShadow(blurRadius: 5.0, color: Colors.grey),
                          ]),
                      height: 25,
                      width: 65,
                      child: TextButton.icon(
                        style: TextButton.styleFrom(
                          // textStyle: TextStyle(color: Colors.black87),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                        ),
                        onPressed: () => {},
                        icon: const Icon(
                          Icons.person_add,
                          size: 12,
                          color: Colors.black,
                        ),
                        label: const Text(
                          'Add',
                          style: TextStyle(color: Colors.black54, fontSize: 8),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24.0),
                          boxShadow: const [
                            BoxShadow(blurRadius: 5.0, color: Colors.grey),
                          ]),
                      height: 25,
                      width: 65,
                      child: TextButton.icon(
                        style: TextButton.styleFrom(
                          // textStyle: TextStyle(color: Colors.black87),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                        ),
                        onPressed: () => {},
                        icon: const Icon(
                          Partner.stars,
                          size: 5,
                          color: Colors.black,
                        ),
                        label: const Text(
                          'Reviews',
                          style: TextStyle(color: Colors.black54, fontSize: 9),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24.0),
                          boxShadow: const [
                            BoxShadow(blurRadius: 5.0, color: Colors.grey),
                          ]),
                      height: 25,
                      width: 65,
                      child: TextButton.icon(
                        style: TextButton.styleFrom(
                          // textStyle: TextStyle(color: Colors.black87),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                        ),
                        onPressed: () => {},
                        icon: const Icon(
                          Icons.email,
                          size: 12,
                          color: Colors.black,
                        ),
                        label: const Text(
                          'Inbox',
                          style: TextStyle(color: Colors.black54, fontSize: 8),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24.0),
                          boxShadow: const [
                            BoxShadow(blurRadius: 5.0, color: Colors.grey),
                          ]),
                      height: 25,
                      width: 65,
                      child: TextButton.icon(
                        style: TextButton.styleFrom(
                          // textStyle: TextStyle(color: Colors.black87),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                        ),
                        onPressed: () => {},
                        icon: const Icon(
                          Icons.share_outlined,
                          size: 12,
                          color: Colors.black,
                        ),
                        label: const Text(
                          'Share',
                          style: TextStyle(color: Colors.black54, fontSize: 8),
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.more_vert))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: SvgPicture.asset('assets/location.svg'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Owner at',
                            hintStyle: TextStyle(color: Colors.grey),
                            contentPadding: EdgeInsets.only(top: 25)),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: SvgPicture.asset(
                        'assets/work.svg',
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Works at',
                            hintStyle: TextStyle(color: Colors.grey),
                            contentPadding: EdgeInsets.only(top: 25)),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: SvgPicture.asset('assets/from.svg'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'From',
                            hintStyle: TextStyle(color: Colors.grey),
                            contentPadding: EdgeInsets.only(top: 25)),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: SvgPicture.asset('assets/education.svg'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Education',
                            hintStyle: TextStyle(color: Colors.grey),
                            contentPadding: EdgeInsets.only(top: 25)),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: SvgPicture.asset('assets/mobile.svg'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Mobile',
                            hintStyle: TextStyle(color: Colors.grey),
                            contentPadding: EdgeInsets.only(top: 25)),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: SvgPicture.asset('assets/email.svg'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Email',
                            hintStyle: TextStyle(color: Colors.grey),
                            contentPadding: EdgeInsets.only(top: 25)),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: SvgPicture.asset('assets/website.svg'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Website',
                            hintStyle: TextStyle(color: Colors.grey),
                            contentPadding: EdgeInsets.only(top: 25)),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 34,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(blurRadius: 2.0, color: Colors.grey)
                        ]),
                    width: 100,
                    height: 25,
                    child: const Center(
                        child: Text(
                      'Experience',
                      style: TextStyle(color: Colors.black54),
                    )),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(blurRadius: 2.0, color: Colors.grey)
                        ]),
                    width: 100,
                    height: 25,
                    child: const Center(
                        child: Text(
                      'Interest',
                      style: TextStyle(color: Colors.black54),
                    )),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(blurRadius: 2.0, color: Colors.grey)
                        ]),
                    width: 100,
                    height: 25,
                    child: const Center(
                        child: Text(
                      'Skills',
                      style: TextStyle(color: Colors.black54),
                    )),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 200,
                height: 35,
                child: FlatButton(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          style: BorderStyle.solid, color: Colors.white54),
                      borderRadius: BorderRadius.circular(55)),
                  onPressed: () {},
                  child: const Text(
                    'Post',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 200,
                height: 35,
                child: FlatButton(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          style: BorderStyle.solid, color: Colors.white54),
                      borderRadius: BorderRadius.circular(55)),
                  onPressed: () {},
                  child: const Text(
                    'Commercials',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Feed',
                  style: (TextStyle(
                      color: Colors.black87,
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
