import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../partner_icons.dart';
import '../Commercial.dart';
class sponsorpage extends StatefulWidget {
  const sponsorpage({Key? key}) : super(key: key);

  @override
  State<sponsorpage> createState() => _sponsorpageState();
}

class _sponsorpageState extends State<sponsorpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                const SizedBox(height: 50),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext Context) =>
                              const comercial()));
                        },
                        icon: Container(
                          decoration:
                          const BoxDecoration(boxShadow: <BoxShadow>[
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
                      Row(
                        children: [
                          Stack(
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  ElevatedButton(
                                    onPressed: () => print("Hello"),
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: const Size(85, 15),
                                      //fixedSize: Size(85, 0),
                                      elevation: 10,
                                      primary: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(15)),
                                      padding: const EdgeInsets.only(left: 15),
                                    ),
                                    child: const Text(
                                      "View Proposal",
                                      style: TextStyle(
                                          color: Colors.black54, fontSize: 7),
                                    ),
                                  ),
                                  Transform.translate(
                                      offset: const Offset(-44, 0),
                                      child: Material(
                                        elevation: 10,
                                        shape: const CircleBorder(),
                                        child: Container(
                                          width: 30,
                                          height: 30,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                          ),
                                          child: const FittedBox(
                                              child: Icon(
                                                Icons.play_arrow,
                                                color: Colors.grey,
                                              )),
                                        ),
                                      ))
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Stack(
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  ElevatedButton(
                                    onPressed: () => print("Hello"),
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: const Size(100, 15),
                                      //fixedSize: Size(85, 0),
                                      elevation: 10,
                                      primary: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(15)),
                                      padding: const EdgeInsets.only(left: 13),
                                    ),
                                    child: const Text(
                                      "Watch Presentataion",
                                      style: TextStyle(
                                          color: Colors.black54, fontSize: 7),
                                    ),
                                  ),
                                  Transform.translate(
                                      offset: const Offset(-48, 0),
                                      child: Material(
                                        elevation: 10,
                                        shape: const CircleBorder(),
                                        child: SvgPicture.asset(
                                          'assets/proposal.svg',
                                          height: 30,
                                        ),
                                      ))
                                ],
                              )
                            ],
                          ),
                        ],
                      )
                    ]),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Become a Sponsor',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SvgPicture.asset('assets/sponsor.svg')
                  ],
                ),
                const SizedBox(height: 25,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    height: 350,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(blurRadius: 2, color: Colors.black54)
                        ],
                        color: const Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(25)),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 35),
                                child: Text(
                                  'Benefits',
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 13),
                                ),
                              ),
                              Text(
                                'Amount',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 13),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 15),
                                child: Text(
                                  'Platinum',
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 15),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 15,
                                ),
                                child: Container(
                                    height: 40,
                                    width: 130,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white,
                                        boxShadow: const [
                                          BoxShadow(
                                              blurRadius: 5, color: Colors.grey)
                                        ]),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 5, left: 5),
                                        child: Column(
                                          children: const [
                                            Text(
                                              '24/7 Service',
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: 11),
                                            ),
                                            Text('30% Profit',
                                                style: TextStyle(
                                                    color: Colors.black87,
                                                    fontSize: 11))
                                          ],
                                        ),
                                      ),
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Container(
                                  height: 30,
                                  width: 65,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                      boxShadow: const [
                                        BoxShadow(
                                            blurRadius: 5, color: Colors.grey)
                                      ]),
                                  child: const Center(
                                    child: Text("100\$"),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Container(
                                  height: 25,
                                  width: 35,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 5, color: Colors.grey)
                                      ]),
                                  child: SvgPicture.asset(
                                    'assets/tick.svg',
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 15),
                                child: Text(
                                  'Gold',
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 15),
                                ),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.only(top: 15, left: 25),
                                child: Container(
                                  height: 40,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                      boxShadow: const [
                                        BoxShadow(
                                            blurRadius: 5, color: Colors.grey)
                                      ]),
                                  child: const TextField(
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 25,
                                      // height: 1.0
                                    ),
                                    decoration: InputDecoration(
                                        contentPadding:
                                        EdgeInsets.only(left: 5, bottom: 5),
                                        //labelText:
                                        //border: OutlineInputBorder(),
                                        border: InputBorder.none),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Container(
                                  height: 30,
                                  width: 65,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                      boxShadow: const [
                                        BoxShadow(
                                            blurRadius: 5, color: Colors.grey)
                                      ]),
                                  child: const TextField(maxLength: 7,
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20,
                                      // height: 1.0
                                    ),
                                    decoration: InputDecoration(
                                        counterText: '',
                                        contentPadding:
                                        EdgeInsets.only(left: 5, bottom: 15),
                                        //labelText:
                                        //border: OutlineInputBorder(),
                                        border: InputBorder.none),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: MyCheckbox(key:  UniqueKey(),),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 15),
                                child: Text(
                                  'Silver',
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 15),
                                ),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.only(top: 15, left: 20),
                                child: Container(
                                  height: 40,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                      boxShadow: const [
                                        BoxShadow(
                                            blurRadius: 5, color: Colors.grey)
                                      ]),
                                  child:  const TextField(
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 25,
                                      // height: 1.0
                                    ),
                                    decoration: InputDecoration(
                                        contentPadding:
                                        EdgeInsets.only(left: 5, bottom: 5),
                                        //labelText:
                                        //border: OutlineInputBorder(),
                                        border: InputBorder.none),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Container(
                                  height: 30,
                                  width: 65,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                      boxShadow: const [
                                        BoxShadow(
                                            blurRadius: 5, color: Colors.grey)
                                      ]),
                                  child: const TextField(maxLength: 7,
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20,
                                      // height: 1.0
                                    ),
                                    decoration: InputDecoration(
                                        counterText: '',
                                        contentPadding:
                                        EdgeInsets.only(left: 5, bottom: 15),
                                        //labelText:
                                        //border: OutlineInputBorder(),
                                        border: InputBorder.none),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Container(
                                  height: 25,
                                  width: 35,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 5, color: Colors.grey)
                                      ]),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 15),
                                child: Text(
                                  'Bronze',
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 15),
                                ),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.only(top: 15, left: 10),
                                child: Container(
                                  height: 40,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                      boxShadow: const [
                                        BoxShadow(
                                            blurRadius: 5, color: Colors.grey)
                                      ]),
                                  child:  const TextField(
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 25,
                                      // height: 1.0
                                    ),
                                    decoration: InputDecoration(
                                        contentPadding:
                                        EdgeInsets.only(left: 5, bottom: 5),
                                        //labelText:
                                        //border: OutlineInputBorder(),
                                        border: InputBorder.none),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Container(
                                  height: 30,
                                  width: 65,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                      boxShadow: const [
                                        BoxShadow(
                                            blurRadius: 5, color: Colors.grey)
                                      ]),
                                  child: const TextField(maxLength: 7,
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20,
                                      // height: 1.0
                                    ),
                                    decoration: InputDecoration(
                                        counterText: '',
                                        contentPadding:
                                        EdgeInsets.only(left: 5, bottom: 15),
                                        //labelText:
                                        //border: OutlineInputBorder(),
                                        border: InputBorder.none),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Container(
                                  height: 25,
                                  width: 35,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 5, color: Colors.grey)
                                      ]),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 15),
                                child: Text(
                                  'In Kind',
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 15),
                                ),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.only(top: 15, left: 15),
                                child: Container(
                                  height: 40,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                      boxShadow: const [
                                        BoxShadow(
                                            blurRadius: 5, color: Colors.grey)
                                      ]),
                                  child:  const TextField(
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 25,
                                      // height: 1.0
                                    ),
                                    decoration: InputDecoration(
                                        contentPadding:
                                        EdgeInsets.only(left: 5, bottom: 5),
                                        //labelText:
                                        //border: OutlineInputBorder(),
                                        border: InputBorder.none),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Container(
                                  height: 30,
                                  width: 65,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white,
                                      boxShadow: const [
                                        BoxShadow(
                                            blurRadius: 5, color: Colors.grey)
                                      ]),
                                  child: const TextField(maxLength: 7,
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20,
                                      // height: 1.0
                                    ),
                                    decoration: InputDecoration(
                                        counterText: '',
                                        contentPadding:
                                        EdgeInsets.only(left: 5, bottom: 15),
                                        //labelText:
                                        //border: OutlineInputBorder(),
                                        border: InputBorder.none),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Container(
                                  height: 25,
                                  width: 35,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 5, color: Colors.grey)
                                      ]),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
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
                            style:
                            TextStyle(color: Colors.black54, fontSize: 8),
                          ),
                        ),
                      ),
                      SizedBox(
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
                            style:
                            TextStyle(color: Colors.black54, fontSize: 9),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      SizedBox(
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
                            'Chat',
                            style:
                            TextStyle(color: Colors.black54, fontSize: 8),
                          ),
                        ),
                      ),
                      SizedBox(
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
                            Partner.invest,
                            size: 12,
                            color: Colors.black,
                          ),
                          label: const Text(
                            'Offer',
                            style:
                            TextStyle(color: Colors.black54, fontSize: 8),
                          ),
                        ),
                      ),
                      SizedBox(
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
                            Partner.accept,
                            size: 12,
                            color: Colors.black,
                          ),
                          label: const Text(
                            'Accept',
                            style:
                            TextStyle(color: Colors.black54, fontSize: 8),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30,),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(55),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 2,color: Colors.black
                        )
                      ]
                  ),
                  width: 200,
                  height: 30,
                  child: FlatButton(
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                      // side: const BorderSide(
                      //     style: BorderStyle.solid, color: Colors.white54),
                        borderRadius: BorderRadius.circular(55)),
                    onPressed: () {},
                    child: const Text(
                      'Budget',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(55),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 2,color: Colors.black
                        )
                      ]
                  ),
                  width: 200,
                  height: 30,
                  child: FlatButton(
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                      // side: const BorderSide(
                      //     style: BorderStyle.solid, color: Colors.white54),
                        borderRadius: BorderRadius.circular(55)),
                    onPressed: () {},
                    child: const Text(
                      'Brief Description',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),const SizedBox(height: 10,),
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(55),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 2,color: Colors.black
                        )
                      ]
                  ),
                  width: 200,
                  height: 30,
                  child: FlatButton(
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                      // side: const BorderSide(
                      //     style: BorderStyle.solid, color: Colors.white54),
                        borderRadius: BorderRadius.circular(55)),
                    onPressed: () {},
                    child: const Text(
                      'Scopes & Limitations',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),const SizedBox(height: 10,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



class MyCheckbox extends StatefulWidget {
  const MyCheckbox({required Key key}) : super(key: key);

  @override
  _MyCheckboxState createState() => _MyCheckboxState();
}

class _MyCheckboxState extends State<MyCheckbox> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(

      ///CHECKBOX
        onTap: () {
          setState(() {
            value = !value;
          });
        },
        child: Container(
          decoration:
          const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
          child: value
              ? Container(
              padding: const EdgeInsets.all(5.0),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.green),
              child: const Icon(
                Icons.check,
                size: 20.0,
                color: Colors.white,
              ))
              : Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            padding: const EdgeInsets.all(0.0),
            child: const Icon(
              Icons.circle,
              size: 30.0,
              color: Colors.white,
            ),
          ),
        ));
  }
}
