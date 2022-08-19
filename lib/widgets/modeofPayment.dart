import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class paymentMode extends StatelessWidget {
  String txt;
  Size size;
  paymentMode({Key? key, required this.txt, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color clr= Color(0xFF303F9F);
    return Padding(
      padding: const EdgeInsets.only(left:8.0),
      child: Container(
        alignment: Alignment.center,
        height: size.height*0.045,
width: size.width*0.28,
decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(15),
  border: Border.all(color: clr)
),
child: Text(txt, style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500, color:clr ),),
      ),
    );
  }
}
