import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class quoteWidget extends StatelessWidget {
  Size size;
  quoteWidget({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: size.height*0.2,
              width: size.width*0.05,
              color: Color(0xFFD9D9D9),
            ),
          ),
        ),
         Container(alignment: Alignment. center,
           width: size.width*0.95,
          child: Text('A Budget doesn\'t limit your freedom;\nIt gives you freeedom ', style: GoogleFonts.poppins(fontSize: 32, color: Color(0xFFD9D9D9)),))],
      ),
    );
  }
}
