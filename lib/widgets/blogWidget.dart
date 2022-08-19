import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class blogWidget extends StatelessWidget {
  Size size;
  blogWidget({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFEEEEEE), width: 1),
          borderRadius: BorderRadius.circular(25),
        ),
        height: size.height * 0.45,
        width: size.width * 0.8,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                  borderRadius: BorderRadius.circular(25),
                ),
                height: (size.height * 0.37) / 2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.50),
              child: Container(
                height: (size.height * 0.35) / 2.1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "4 methods of calculating Network,Which no one will tell you",
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xFF0C0C0C), ),
                    ),
                    Text('Read Time: 8 min',style:GoogleFonts.poppins(
                          fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xFF303F9F)),),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Row(
                        children: [
                          Image(image: AssetImage('images/BlogImage.png')),
                          Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: Text('Ann Korkowski',style:GoogleFonts.poppins(
                          fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xFF525251)),),
                          ),

                        ],
                       ),
                       Text('20/08/2022',style:GoogleFonts.poppins(
                          fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xFF525251)),)
                     ],
                   )
                    
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
