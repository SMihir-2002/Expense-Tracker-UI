
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class navBar extends StatefulWidget {
  Size size;
  navBar({Key? key, required this.size}) : super(key: key);

  @override
  State<navBar> createState() => _navBarState(size: size);
}

class _navBarState extends State<navBar> {
  int index = 0;
  int currentIndex = 0;
  Size size;
  _navBarState({required this.size});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14.0, right: 14, bottom: 14),
      child: Material(
        borderRadius: BorderRadius.circular(30),
        elevation: 1,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          height: size.height * 0.08,
          child: FittedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                      
                      color:(index==0)? Colors.blue[100]: Colors.transparent,
                      ),
                      height: 35,
                      width: 100,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          child: Icon(Icons.home,
                              color: Color(0xFF303f9f), size: 25,),
                          onTap: () {
                            setState(() {
                              index = 0;
                            });
                          },
                        ),
                        (index==0)?Text(
                          "Home",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ):Container(),
                      ],
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                      
                      color:(index==1)? Colors.blue[100]: Colors.transparent,
                      ),
                      height: 35,
                      width: 100,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          child: Icon(Icons.credit_card,
                              color: Color(0xFF303f9f), size: 25,),
                          onTap: () {
                            setState(() {
                              index = 1;
                            });
                          },
                        ),
                        (index==1)?Text(
                          "Cards",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ):Container(),
                      ],
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                      
                      color:(index==2)? Colors.blue[100]: Colors.transparent,
                      ),
                      height: 35,
                      width: 100,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          child: Icon(Icons.pie_chart_outline,
                              color: Color(0xFF303f9f), size: 25,),
                          onTap: () {
                            setState(() {
                              index = 2;
                            });
                          },
                        ),
                        (index==2)?Text(
                          "Func",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ):Container(),
                      ],
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                      
                      color:(index==3)? Colors.blue[100]: Colors.transparent,
                      ),
                      height: 35,
                      width: 100,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          child: Image(image: AssetImage("images/reward.png"), color: Color(0xFF303F9F),height: 50,),
                          onTap: () {
                            setState(() {
                              index = 3;
                            });
                          },
                        ),
                        (index==3)?Text(
                          "Rewards",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ):Container(),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
