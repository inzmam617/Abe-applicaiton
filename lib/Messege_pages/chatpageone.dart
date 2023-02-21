import 'package:abe_app/Bottombar/bottombarpages/userpagetwo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class chatpageone extends StatefulWidget {
  const chatpageone({Key? key}) : super(key: key);

  @override
  State<chatpageone> createState() => _chatpageoneState();
}

class _chatpageoneState extends State<chatpageone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext Context) =>
                        const userpagetwo()));
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
                  width: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(48),
                  ),
                  width: 45,
                  height: 45,
                  child: ClipOval(
                    child: SizedBox.fromSize(
                      size: const Size.fromRadius(48),
                      // Image radius
                      child:
                      Image.asset('assets/profile.jpg', fit: BoxFit.cover),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  children: const [
                    Text(
                      'Bader Muhammad',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 13),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 75),
                      child: Text(
                        'Typing,,,',
                        style: TextStyle(fontSize: 10),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          // const SizedBox(
          //   height: 10,
          // ),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    width: double.infinity,
                    color: Colors.black,
                    height: 0.2,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color(0xfffaf3e8)),
                    height: 250,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                const EdgeInsets.only(top: 25, left: 15),
                                child: Row(
                                  children: [
                                    SvgPicture.asset('assets/coins.svg'),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Text(
                                      'Investor',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                children: const [
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    'Gold catogary',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 20, top: 20, left: 10),
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(25),
                                          boxShadow: const [
                                            BoxShadow(
                                                blurRadius: 6.0,
                                                color: Colors.black12)
                                          ]),
                                      height: 35,
                                      width:
                                      MediaQuery
                                          .of(context)
                                          .size
                                          .width / 2,
                                      child: TextFormField(
                                        textAlignVertical:
                                        TextAlignVertical.bottom,
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          hintStyle: const TextStyle(
                                              color: Colors.grey),
                                          hintText: 'Amount',
                                          border: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(25),
                                              borderSide: BorderSide.none),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(15),
                                          boxShadow: const [
                                            BoxShadow(
                                                blurRadius: 6.0,
                                                color: Colors.black12)
                                          ]),
                                      height: 100,
                                      width:
                                      MediaQuery
                                          .of(context)
                                          .size
                                          .width / 2,
                                      child: TextFormField(
                                        maxLines: 100,
                                        textAlignVertical:
                                        TextAlignVertical.top,
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          hintStyle: const TextStyle(
                                              color: Colors.grey),
                                          hintText: 'Benefits',
                                          border: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(15),
                                              borderSide: BorderSide.none),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const Padding(
                            padding:
                            EdgeInsets.only(top: 5, bottom: 5, right: 20),
                            child: VerticalDivider()),
                        Padding(
                          padding: const EdgeInsets.only(top: 50, right: 20),
                          child: Column(
                            children: [
                              SizedBox(
                                width: 100,
                                height: 35,
                                child: FlatButton(
                                  color: Colors.black,
                                  shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          style: BorderStyle.solid,
                                          color: Colors.white54),
                                      borderRadius: BorderRadius.circular(55)),
                                  onPressed: () {},
                                  child: const Text(
                                    'Accept',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: 100,
                                height: 35,
                                child: FlatButton(
                                  color: Colors.red,
                                  shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          style: BorderStyle.solid,
                                          color: Colors.white54),
                                      borderRadius: BorderRadius.circular(55)),
                                  onPressed: () {},
                                  child: const Text(
                                    'Decline',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: 100,
                                height: 35,
                                child: FlatButton(
                                  color: const Color(0xff585d5e),
                                  shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          style: BorderStyle.solid,
                                          color: Colors.white54),
                                      borderRadius: BorderRadius.circular(55)),
                                  onPressed: () {},
                                  child: const Text(
                                    'Send offer',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(48),
                          ),
                          width: 35,
                          height: 35,
                          child: ClipOval(
                            child: SizedBox.fromSize(
                              size: const Size.fromRadius(48),
                              // Image radius
                              child: Image.asset('assets/profile.jpg',
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: const [
                            Text(
                              'Bader Muhammad',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(25),
                                bottomRight: Radius.circular(25))),
                        height: 50,
                        width: 300,
                        child: const Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Center(
                            child: Text(
                              'what is the best time to visit Rio de Janeiro?',
                              style:
                              TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Row(
                          children: [
                            const Text(
                              'Rayn',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(48),
                              ),
                              width: 35,
                              height: 35,
                              child: ClipOval(
                                child: SizedBox.fromSize(
                                  size: const Size.fromRadius(48),
                                  // Image radius
                                  child: Image.asset('assets/rayn.jpeg',
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                bottomLeft: Radius.circular(25))),
                        height: 50,
                        width: 300,
                        child: const Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Center(
                            child: Text(
                              'what is the best time to visit Rio de Janeiro?',
                              style:
                              TextStyle(color: Colors.black, fontSize: 13),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(48),
                          ),
                          width: 35,
                          height: 35,
                          child: ClipOval(
                            child: SizedBox.fromSize(
                              size: const Size.fromRadius(48),
                              // Image radius
                              child: Image.asset('assets/profile.jpg',
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: const [
                            Text(
                              'Bader Muhammad',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(25),
                                bottomRight: Radius.circular(25))),
                        height: 50,
                        width: 300,
                        child: const Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Center(
                            child: Text(
                              'what is the best time to visit Rio de Janeiro?',
                              style:
                              TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(48),
                          ),
                          width: 35,
                          height: 35,
                          child: ClipOval(
                            child: SizedBox.fromSize(
                              size: const Size.fromRadius(48),
                              // Image radius
                              child: Image.asset('assets/profile.jpg',
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: const [
                            Text(
                              'Bader Muhammad',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(25),
                                bottomRight: Radius.circular(25))),
                        height: 50,
                        width: 300,
                        child: const Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Center(
                            child: Text(
                              'what is the best time to visit Rio de Janeiro?',
                              style:
                              TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Row(
                          children: [
                            const Text(
                              'Rayn',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(48),
                              ),
                              width: 35,
                              height: 35,
                              child: ClipOval(
                                child: SizedBox.fromSize(
                                  size: const Size.fromRadius(48),
                                  // Image radius
                                  child: Image.asset('assets/rayn.jpeg',
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                bottomLeft: Radius.circular(25))),
                        height: 50,
                        width: 300,
                        child: const Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Center(
                            child: Text(
                              'what is the best time to visit Rio de Janeiro?',
                              style:
                              TextStyle(color: Colors.black, fontSize: 13),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(48),
                          ),
                          width: 35,
                          height: 35,
                          child: ClipOval(
                            child: SizedBox.fromSize(
                              size: const Size.fromRadius(48),
                              // Image radius
                              child: Image.asset('assets/profile.jpg',
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: const [
                            Text(
                              'Bader Muhammad',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(25),
                                bottomRight: Radius.circular(25))),
                        height: 50,
                        width: 300,
                        child: const Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Center(
                            child: Text(
                              'what is the best time to visit Rio de Janeiro?',
                              style:
                              TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(48),
                          ),
                          width: 35,
                          height: 35,
                          child: ClipOval(
                            child: SizedBox.fromSize(
                              size: const Size.fromRadius(48),
                              // Image radius
                              child: Image.asset('assets/profile.jpg',
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: const [
                            Text(
                              'Bader Muhammad',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(25),
                                bottomRight: Radius.circular(25))),
                        height: 50,
                        width: 300,
                        child: const Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Center(
                            child: Text(
                              'what is the best time to visit Rio de Janeiro?',
                              style:
                              TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Row(
                          children: [
                            const Text(
                              'Rayn',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(48),
                              ),
                              width: 35,
                              height: 35,
                              child: ClipOval(
                                child: SizedBox.fromSize(
                                  size: const Size.fromRadius(48),
                                  // Image radius
                                  child: Image.asset('assets/rayn.jpeg',
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                bottomLeft: Radius.circular(25))),
                        height: 50,
                        width: 300,
                        child: const Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Center(
                            child: Text(
                              'what is the best time to visit Rio de Janeiro?',
                              style:
                              TextStyle(color: Colors.black, fontSize: 13),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(48),
                          ),
                          width: 35,
                          height: 35,
                          child: ClipOval(
                            child: SizedBox.fromSize(
                              size: const Size.fromRadius(48),
                              // Image radius
                              child: Image.asset('assets/profile.jpg',
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: const [
                            Text(
                              'Bader Muhammad',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(25),
                                bottomRight: Radius.circular(25))),
                        height: 50,
                        width: 300,
                        child: const Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Center(
                            child: Text(
                              'what is the best time to visit Rio de Janeiro?',
                              style:
                              TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),

              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Stack(
              children: [

                Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(25))
              ),
                  height: 50,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width ,

                  child: Material(
                    color: Colors.black,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          topLeft: Radius.circular(25)),
                    ),
                    shadowColor: Colors.black,
                    elevation: 4,
                    child: TextFormField(
                      style: const TextStyle(color: Colors.white),
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: InputDecoration(
                        icon: Container(
                          height: 35,
                          width: 35,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 15, right: 10),
                            child: IconButton(
                              icon: const Icon(
                                Icons.upload,
                                size: 25,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        fillColor: Colors.black,
                        hintStyle: TextStyle(color: Colors.grey.shade400),
                        hintText: 'Write Something ...',
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),
                Transform.translate(
                    offset: const Offset(370, 0.0),
                    child: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.subdirectory_arrow_left,color: Colors.white,))
                ),


              ],
            ),
          )
        ],
      ),
    );
  }
}
