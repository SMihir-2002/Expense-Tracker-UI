import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class textWidget extends StatelessWidget {
  Size size;
  String txt;
  textWidget({Key? key, required this.size, required this.txt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                    fontWeight: FontWeight.w500, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
