import 'package:expense_tracker/support/constants.dart';
import 'package:expense_tracker/widgets/GraphWidget.dart';
import 'package:expense_tracker/widgets/OfferandRewardWidget.dart';
import 'package:expense_tracker/widgets/Text.dart';
import 'package:expense_tracker/widgets/blogWidget.dart';
import 'package:expense_tracker/widgets/categoryWidget.dart';
import 'package:expense_tracker/widgets/dataEntry.dart';
import 'package:expense_tracker/widgets/quoteWidget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/TaskWidget.dart';
import '../widgets/navBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool state = false;
  @override
  Widget build(BuildContext context) {
    String name = (state == false) ? "Waseem Akram" : "Ankur";
    Size size = MediaQuery.of(context).size;

    String txt = (state == false)
        ? 'Complete your KYC now😡'
        : 'You doing great keep it up.🤞';
    var AppBarWidth = (state == false) ? size.width * 0 : size.width * 0.15;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Padding(
          padding: EdgeInsets.only(right: AppBarWidth),
          child: SafeArea(
            child: AppBar(
              elevation: 1,
              centerTitle: false,
              backgroundColor: Colors.white,
              leading: Image.asset('images/profileImage.jpg'),
              title: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome back,',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Color(0xFF525251),
                    ),
                  ),
                  Text(
                    name,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Color(0xFF2F2F30),
                    ),
                  ),
                ],
              ),
              actions: [Image.asset("images/AppBarIcon.jpg")],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                alignment: Alignment.centerLeft,
                width: size.width * 0.85,
                child: Column(
                  children: [
                    Container(
                      width: size.width * 0.55,
                      child: Text(
                        txt,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Color(0xFF303F9F)),
                width: size.width * 0.86,
                height: size.height * 0.65,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total Spends",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 18),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        height: size.height*0.315,
                        width: size.width*0.8,
                        child: (state== true)?GraphWidget(size:size):(Text("₹ 0",style:GoogleFonts.poppins( fontSize: 32, fontWeight: FontWeight.w600,color: Color(0xFFFFFFFF)))  ),
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text(
                                "Jan month's data",
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Colors.white),
                              ),
                            ),
                            Stack(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: size.height * 0.2,
                                  width: size.width * 0.75,
                                ),
                                Container(
                                  child: (state == false)
                                      ? Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                            color: Colors.white,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 16.0, left: 16),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Pending KYC",
                                                      style:
                                                          GoogleFonts.poppins(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 18,
                                                        color:
                                                            Color(0xFF0C0C0C),
                                                      ),
                                                    ),
                                                    Container(
                                                        width:
                                                            size.width * 0.36,
                                                        child: Text(
                                                            "Lorem Ipsum is simply dummy text of the printing and ty. ")),
                                                    TextButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          state = !state;
                                                        });
                                                      },
                                                      child: Container(
                                                        decoration: BoxDecoration(
                                                            color: Color(
                                                                0xFFE13B30),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20)),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      16.0,
                                                                  vertical: 10),
                                                          child: Text(
                                                            "Complete Now",
                                                            style: GoogleFonts
                                                                .poppins(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize:
                                                                        16,
                                                                    color: Colors
                                                                        .white),
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Stack(
                                                children: [
                                                  Container(
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                      color: Colors.red[50],
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              topLeft: Radius
                                                                  .circular(
                                                                      160),
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      160),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          160),
                                                              topRight: Radius
                                                                  .circular(
                                                                      50)),
                                                    ),
                                                    height: 110,
                                                    width: 110,
                                                    child: Image(
                                                      image: AssetImage(
                                                          "images/key.png"),
                                                      height: 40,
                                                      width: 40,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        )
                                      : dataEntry(size: size),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            textWidget(size: size, txt: 'Categories'),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  categoryWidget(
                    image: Image(
                      image: AssetImage(
                        'images/FastFood1.png',
                      ),
                    ),
                    txt: 'Food',
                  ),
                  categoryWidget(
                    image: Image(image: AssetImage('images/ent.png')),
                    txt: 'Entertainment',
                  ),
                  categoryWidget(
                    image: Image(image: AssetImage('images/shopping.png')),
                    txt: 'Shopping',
                  ),
                  categoryWidget(
                    image: Image(image: AssetImage('images/pet.png')),
                    txt: 'Pet',
                  ),
                  categoryWidget(
                    image: Image(image: AssetImage('images/FastFood1.png')),
                    txt: 'Food',
                  ),
                  categoryWidget(
                    image: Image(image: AssetImage('images/FastFood1.png')),
                    txt: 'Food',
                  ),
                ],
              ),
            ),
            textWidget(size: size, txt: 'Task'),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  taskWidget(
                    img: Image(
                      image: AssetImage('images/key.png'),
                      height: 35,
                    ),
                    index: "01",
                    size: size,
                  ),
                  taskWidget(
                    img: Image(
                      image: AssetImage('images/food.png'),
                      height: 35,
                    ),
                    index: "02",
                    size: size,
                  ),
                  taskWidget(
                    img: Image(
                      image: AssetImage('images/food.png'),
                      height: 35,
                    ),
                    index: "03",
                    size: size,
                  ),
                  taskWidget(
                    img: Image(
                      image: AssetImage('images/food.png'),
                      height: 35,
                    ),
                    index: "04",
                    size: size,
                  ),
                ],
              ),
            ),
            textWidget(size: size, txt: 'Offers & Rewards'),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  offerAndRewardWidget(
                    size: size,
                  ),
                  offerAndRewardWidget(
                    size: size,
                  ),
                  offerAndRewardWidget(
                    size: size,
                  ),
                ],
              ),
            ),
            textWidget(size: size, txt: 'Blogs'),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  blogWidget(size: size),
                  blogWidget(size: size),
                  blogWidget(size: size),
                ],
              ),
            ),
            quoteWidget(size: size)
          ],
        ),
      ),
      bottomNavigationBar: navBar(
        size: size,
      ),
    );
  }
}
