import 'package:abe_app/home/home.dart';
import 'package:abe_app/my_icons_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';



class userpagefour extends StatefulWidget {
  const userpagefour({Key? key}) : super(key: key);

  @override
  State<userpagefour> createState() => _userpageoneState();
}

class _userpageoneState extends State<userpagefour> {
  double buttonhieght = 45;
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
              Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
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
                  ),
                ),
                const SizedBox(width: 30),
                const Text(
                  'Discover',
                  style: TextStyle(color: Colors.grey, fontSize: 25),
                )
              ]),
              const SizedBox(
                height: 35,
              ),
              Padding(
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
                        icon: Container(
                          width: 50,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 5.0,
                                  color: Colors.grey
                                )
                              ],
                              borderRadius: BorderRadius.circular(20)
                          ),child: const Icon(MyIcons.safari),
                        ),
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
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(
                      width: 280,
                      height: buttonhieght,
                      child: FlatButton(
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                style: BorderStyle.solid,
                                color: Colors.white54),
                            borderRadius: BorderRadius.circular(55)),
                        onPressed: () {},
                        child: const Text(
                          'Videos',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 280,
                      height: buttonhieght,
                      child: FlatButton(
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                style: BorderStyle.solid,
                                color: Colors.white54),
                            borderRadius: BorderRadius.circular(55)),
                        onPressed: () {},
                        child: const Text(
                          'Free Courses',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 280,
                      height: buttonhieght,
                      child: FlatButton(
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                style: BorderStyle.solid,
                                color: Colors.white54),
                            borderRadius: BorderRadius.circular(55)),
                        onPressed: () {},
                        child: const Text(
                          'Events',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 280,
                      height: buttonhieght,
                      child: FlatButton(
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                style: BorderStyle.solid,
                                color: Colors.white54),
                            borderRadius: BorderRadius.circular(55)),
                        onPressed: () {},
                        child: const Text(
                          'Books',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 280,
                      height: buttonhieght,
                      child: FlatButton(
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                style: BorderStyle.solid,
                                color: Colors.white54),
                            borderRadius: BorderRadius.circular(55)),
                        onPressed: () {},
                        child: const Text(
                          'ABE Community near me',
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
    );
  }
}
