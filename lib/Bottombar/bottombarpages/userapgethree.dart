import 'package:abe_app/Bottombar/bottombarpages/userpagetwo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class userpagethree extends StatefulWidget {
  const userpagethree({Key? key}) : super(key: key);

  @override
  State<userpagethree> createState() => _userpageoneState();
}

class _userpageoneState extends State<userpagethree> {
  double buttonhieght = 50;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
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
                      width: 25,
                    ),
                    
                    const Text('Community',style: TextStyle(color: Colors.grey,fontSize: 25),)
                    
                  ],
                ),
              ),

              const SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Stack(
                  children: [
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
                            contentPadding: const EdgeInsets.only(left: 55,bottom: 100),
                            //isDense: true,
                            hintStyle: TextStyle(color: Colors.grey.shade400),
                            hintText: 'Type here...',
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Transform.translate(
                        offset: const Offset(0.0, 0.0),
                        child: Material(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25 )),
                          elevation: 8.0,
                          child: Container(
                            width: 50,
                            height: 35,
                            decoration: BoxDecoration(color: Colors.white,
                                borderRadius: BorderRadius.circular(25)),
                            child: SvgPicture.asset('assets/commfriends.svg',fit: BoxFit.scaleDown,),
                          ),
                        ))
                  ],
                ),
              ),
              const SizedBox(height: 50,),
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
                          'Acquaintances',
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
                          'Pages /Business Pages',
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
                          'ABE Communities',
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
                          'ABE Circles',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),const SizedBox(
                      height: 20,
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
