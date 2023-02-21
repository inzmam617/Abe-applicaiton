import 'package:abe_app/Bottombar/bottombar.dart';
import 'package:abe_app/Messege_pages/chatpageone.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class userpagetwo extends StatefulWidget {
  const userpagetwo({Key? key}) : super(key: key);

  @override
  State<userpagetwo> createState() => _userpageoneState();
}

class _userpageoneState extends State<userpagetwo> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 45,
              ),
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
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 15),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('Inbox',
                      style: TextStyle(fontSize: 28, color: Colors.black87)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child:
                SizedBox(
                  height: 35,
                  child: Material(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    shadowColor: Colors.black,
                    elevation: 4,
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: InputDecoration(
                        icon: Container(
                          width: 50,
                          height: 35,
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(blurRadius: 2.0,color: Colors.grey)
                            ],
                            color: Colors.white,
                          borderRadius: BorderRadius.circular(25),

                        ),
                        child: const Icon(Icons.search_rounded,color: Colors.grey,),),
                        hintStyle: TextStyle(color: Colors.grey.shade400),
                        hintText: 'Type here...',
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25),
               ListView(
                 shrinkWrap: true,
                 physics: const ScrollPhysics(),
                 scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.grey[200]),
                        height: 90,
                        child: FlatButton(
                            onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext Context) => const chatpageone()));},
                            child: Row(
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.brown),
                                        shape: BoxShape.circle),
                                    height: 65,
                                    width: 65,
                                    // decoration: BoxDecoration(
                                    //     borderRadius: BorderRadius.circular(100)),
                                    child: ClipOval(
                                      child: SizedBox.fromSize(
                                        size: const Size.fromRadius(48),
                                        // Image radius
                                        child: Image.asset('assets/profile.jpg',
                                            fit: BoxFit.cover),
                                      ),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(top: 25, left: 10),
                                  child: Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(right: 130),
                                        child: Text('Jaguar',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18)),
                                      ),
                                      SizedBox(height: 8,),
                                      Text(
                                        "Hey! I'd like to know how much it cost me..",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 10),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.grey[200]),
                        height: 90,
                        child: FlatButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.brown),
                                        shape: BoxShape.circle),
                                    height: 65,
                                    width: 65,
                                    // decoration: BoxDecoration(
                                    //     borderRadius: BorderRadius.circular(100)),
                                    child: ClipOval(
                                      child: SizedBox.fromSize(
                                        size: const Size.fromRadius(48),
                                        // Image radius
                                        child: Image.asset('assets/profile.jpg',
                                            fit: BoxFit.cover),
                                      ),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(top: 25, left: 10),
                                  child: Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(right: 130),
                                        child: Text('Jaguar',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18)),
                                      ),
                                      SizedBox(height: 8,),
                                      Text(
                                        "Hey! I'd like to know how much it cost me..",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 10),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.grey[200]),
                        height: 90,
                        child: FlatButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.brown),
                                        shape: BoxShape.circle),
                                    height: 65,
                                    width: 65,
                                    // decoration: BoxDecoration(
                                    //     borderRadius: BorderRadius.circular(100)),
                                    child: ClipOval(
                                      child: SizedBox.fromSize(
                                        size: const Size.fromRadius(48),
                                        // Image radius
                                        child: Image.asset('assets/profile.jpg',
                                            fit: BoxFit.cover),
                                      ),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(top: 25, left: 10),
                                  child: Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(right: 130),
                                        child: Text('Jaguar',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18)),
                                      ),
                                      SizedBox(height: 8,),
                                      Text(
                                        "Hey! I'd like to know how much it cost me..",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 10),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.grey[200]),
                        height: 90,
                        child: FlatButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.brown),
                                        shape: BoxShape.circle),
                                    height: 65,
                                    width: 65,
                                    // decoration: BoxDecoration(
                                    //     borderRadius: BorderRadius.circular(100)),
                                    child: ClipOval(
                                      child: SizedBox.fromSize(
                                        size: const Size.fromRadius(48),
                                        // Image radius
                                        child: Image.asset('assets/profile.jpg',
                                            fit: BoxFit.cover),
                                      ),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(top: 25, left: 10),
                                  child: Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(right: 130),
                                        child: Text('Jaguar',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18)),
                                      ),
                                      SizedBox(height: 8,),
                                      Text(
                                        "Hey! I'd like to know how much it cost me..",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 10),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.grey[200]),
                        height: 90,
                        child: FlatButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.brown),
                                        shape: BoxShape.circle),
                                    height: 65,
                                    width: 65,
                                    // decoration: BoxDecoration(
                                    //     borderRadius: BorderRadius.circular(100)),
                                    child: ClipOval(
                                      child: SizedBox.fromSize(
                                        size: const Size.fromRadius(48),
                                        // Image radius
                                        child: Image.asset('assets/profile.jpg',
                                            fit: BoxFit.cover),
                                      ),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(top: 25, left: 10),
                                  child: Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(right: 130),
                                        child: Text('Jaguar',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18)),
                                      ),
                                      SizedBox(height: 8,),
                                      Text(
                                        "Hey! I'd like to know how much it cost me..",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 10),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.grey[200]),
                        height: 90,
                        child: FlatButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.brown),
                                        shape: BoxShape.circle),
                                    height: 65,
                                    width: 65,
                                    // decoration: BoxDecoration(
                                    //     borderRadius: BorderRadius.circular(100)),
                                    child: ClipOval(
                                      child: SizedBox.fromSize(
                                        size: const Size.fromRadius(48),
                                        // Image radius
                                        child: Image.asset('assets/profile.jpg',
                                            fit: BoxFit.cover),
                                      ),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(top: 25, left: 10),
                                  child: Column(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(right: 130),
                                        child: Text('Jaguar',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18)),
                                      ),
                                      SizedBox(height: 8,),
                                      Text(
                                        "Hey! I'd like to know how much it cost me..",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 10),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )),
                      ),
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
