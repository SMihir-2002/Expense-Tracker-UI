import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class categoryWidget extends StatelessWidget {
  String txt;
  Image image;
  categoryWidget({Key? key, required this.image, required this.txt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 45),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xFFEEEEEE)),
            height: 80,
            width: 80,
            child: image,
          ),
          Text(
            txt,style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500),
          ),
          
        ],
      ),
    );
  }
}
