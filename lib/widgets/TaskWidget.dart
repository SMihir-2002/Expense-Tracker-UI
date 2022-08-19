import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class taskWidget extends StatelessWidget {
  Image img;
  String index;
  Size size;
  taskWidget(
      {Key? key, required this.img, required this.index, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Color(0xFFEEEEEE))),
        height: size.height * 0.2,
        width: size.height * 0.2,
        child: Stack(
          children: [
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(size.height * 0.05),
                      topRight: Radius.circular(size.height * 0.05),
                      bottomLeft: Radius.circular(size.height * 0.05)),
                  color: Color(0xFFF6EDD2)),
              height: size.height * 0.11,
              width: size.height * 0.11,
              child: img,
            ),
            Positioned(
              top:10,
              right: 15,
                child: Text(
              index,
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 48,
                  color: Color(0xFFF6EDD2)),
            )),
            Positioned(
              bottom: 0,
              child: Container(
                width: size.height*0.21,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Text('Complete KYC',style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500, fontSize: 14
                      ),),
                      Text("Create Category and earn \$25",style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 10))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
