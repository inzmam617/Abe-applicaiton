import 'package:abe_app/Bottombar/bottombar.dart';
import 'package:abe_app/Comm_Commercial_pages/partner_Invest_Sponsor/invest.dart';
import 'package:abe_app/Comm_Commercial_pages/partner_Invest_Sponsor/partner.dart';
import 'package:abe_app/Comm_Commercial_pages/partner_Invest_Sponsor/sponsor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../commicons_icons.dart';
import 'Community.dart';

class comercial extends StatefulWidget {
  const comercial({Key? key}) : super(key: key);

  @override
  State<comercial> createState() => _comercialState();
}

class _comercialState extends State<comercial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                const SizedBox(height: 50,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext Context) => const bottombar()));
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
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width *0.46,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
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
                      width: MediaQuery.of(context).size.width *0.46,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
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
                                builder: (BuildContext Context) => const community()));
                          },
                          child: const Text('COMMUNITY',
                              style: TextStyle(color: Colors.grey))),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black87),
                              boxShadow: const <BoxShadow>[
                                BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 5.0,
                                  //offset: Offset(0.0, 0.75)
                                )
                              ],
                              shape: BoxShape.circle),
                          //color: Colors.black54,
                          child: ClipOval(
                            child: SizedBox.fromSize(
                              size: const Size.fromRadius(48),
                              // Image radius
                              child: Image.asset('assets/profile.jpg',
                                  fit: BoxFit.cover),
                            ),
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
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
                                  hintText: 'Post Your Commercial',
                                  border: const OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/gallery.svg')),
                      //
                    ],
                  ),
                ),
                const SizedBox(height: 25,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                        boxShadow: <BoxShadow>[
                                          BoxShadow(
                                            color: Colors.black54,
                                            blurRadius: 5.0,
                                            //offset: Offset(0.0, 0.75)
                                          )
                                        ],
                                        shape: BoxShape.circle),
                                    //color: Colors.black54,
                                    child: ClipOval(
                                      child: SizedBox.fromSize(
                                        size: const Size.fromRadius(48),
                                        // Image radius
                                        child: Image.asset(
                                            'assets/Jane.jpg',
                                            fit: BoxFit.cover),
                                      ),
                                    )),
                                const Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    'Jane',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                )
                              ],
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.more_horiz))
                          ],
                        ),
                        Container(
                            height: 150,
                            decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3,
                                  color: Colors.blueGrey,
                                )
                              ],
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/janepost.jpg",
                                  ),
                                  fit: BoxFit.cover),
                              borderRadius:
                              BorderRadius.all(Radius.circular(30)),
                            )),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                        height: 25,
                                        width: 25,
                                        decoration: const BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black,
                                                  blurRadius: 2)
                                            ]),
                                        child: IconButton(
                                          padding: EdgeInsets.zero,
                                          icon:  const Icon(
                                            Commicons.shake,
                                            size: 13,
                                          ),
                                          onPressed: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(builder: (BuildContext Context ) => const partnerpage()));
                                          },
                                        )),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      'Partner',
                                      style: TextStyle(fontSize: 8),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  children: [
                                    Container(
                                        height: 25,
                                        width: 25,
                                        decoration: const BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black,
                                                  blurRadius: 2)
                                            ]),
                                        child: Center(
                                          child: IconButton(
                                            padding: EdgeInsets.zero,
                                            icon: const Icon(
                                              Commicons.dollar,
                                              size: 13,
                                            ),
                                            onPressed: () {Navigator.of(context).push(MaterialPageRoute (builder :(BuildContext Context) => const investpage()));},
                                          ),
                                        )),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      'Invest',
                                      style: TextStyle(fontSize: 8),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  children: [
                                    Container(
                                        height: 25,
                                        width: 25,
                                        decoration: const BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black,
                                                  blurRadius: 2)
                                            ]),
                                        child: Center(
                                          child: IconButton(
                                            padding: EdgeInsets.zero,
                                            icon: const Icon(
                                              Commicons.invest,
                                              size: 13,
                                            ),
                                            onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder :(BuildContext Context )=> const sponsorpage()));},
                                          ),
                                        )),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      'Sponsor',
                                      style: TextStyle(fontSize: 8),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                    height: 25,
                                    width: 25,
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black,
                                              blurRadius: 2)
                                        ]),
                                    child: Center(
                                      child: IconButton(
                                        padding: EdgeInsets.zero,
                                        icon: const Icon(
                                          Icons.share,
                                          size: 13,
                                        ),
                                        onPressed: () {},
                                      ),
                                    )),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'Share',
                                  style: TextStyle(fontSize: 8),
                                )
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Padding(
                          padding:
                          EdgeInsets.symmetric(horizontal: 1),
                          child: SizedBox(
                              child: Text(
                                "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime  numquam blanditiis harum quisquam eius Lorem ipsum dolor sit amet consectetur adipisicing elit.",
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12),
                              )),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                        boxShadow: <BoxShadow>[
                                          BoxShadow(
                                            color: Colors.black54,
                                            blurRadius: 5.0,
                                            //offset: Offset(0.0, 0.75)
                                          )
                                        ],
                                        shape: BoxShape.circle),
                                    //color: Colors.black54,
                                    child: ClipOval(
                                      child: SizedBox.fromSize(
                                        size: const Size.fromRadius(48),
                                        // Image radius
                                        child: Image.asset(
                                            'assets/annie.jpg',
                                            fit: BoxFit.cover),
                                      ),
                                    )),
                                const Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    'Annie',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                )
                              ],
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.more_horiz))
                          ],
                        ),
                        Container(
                            height: 150,

                            decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3,
                                  color: Colors.blueGrey,
                                )
                              ],
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/anniepost.jpg",
                                  ),
                                  fit: BoxFit.cover),
                              borderRadius:
                              BorderRadius.all(Radius.circular(30)),
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 1),
                         child: Row(
                           children: [
                             Container(
                                 height: 100,
                                  width: MediaQuery.of(context).size.width / 1.6,
                                 decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30)) ),
                                 //     shape: BoxShape.circle, color: Colors.red),
                                 child: ClipRRect(borderRadius: BorderRadius.circular(13),
                                   child: Image.asset('assets/NoPath.png',fit: BoxFit.cover,
                                   ),
                                 )),
                             //Image.asset('assets/NoPath.png',width: 250,height: 350,),

                             SizedBox(

                               width: MediaQuery.of(context).size.width / 4.5,
                               child: Column(
                                 children: const [Padding(
                                   padding: EdgeInsets.only(left: 14),
                                   child: Text('Website',style: TextStyle(color: Colors.grey,fontSize: 10),),
                                 ),
                                   Padding(
                                     padding: EdgeInsets.only(left: 3),
                                     child: Text("macdonald's.com" ,style: TextStyle(color: Colors.black,fontSize: 10),),
                                   ),
                                   SizedBox(height: 5,),
                                   Padding(
                                     padding: EdgeInsets.only(left: 14),
                                     child: Text('Contact',style: TextStyle(color: Colors.grey,fontSize: 10),),
                                   ),
                                   Padding(
                                     padding: EdgeInsets.only(left: 3),
                                     child: Text("800-244-6227" ,style: TextStyle(color: Colors.black,fontSize: 10),),
                                   )
                                 ],
                               ),
                             ),

                           ],
                         ),
                       ),
                        const SizedBox(height: 25,),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
