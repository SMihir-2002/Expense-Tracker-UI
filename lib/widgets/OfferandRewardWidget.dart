import 'package:expense_tracker/widgets/Text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class offerAndRewardWidget extends StatelessWidget {
  Size size;
  offerAndRewardWidget({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:12.0),
      child: Material(
        elevation: 1,
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFFEEEEEE), width: 1),
            borderRadius: BorderRadius.circular(25),
          
          ),
          height: size.height * 0.45,
          width: size.width*0.8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(

            color: Color(0xFFEEEEEE),
            borderRadius: BorderRadius.circular(25),
          
          ),
          height: (size.height * 0.4)/2,
              ),
              Padding(
                padding: const EdgeInsets.all(13.50),
                child: Container(
                  height: (size.height*0.42)/2.1,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("A rewarding Celebration", style: GoogleFonts.poppins(
                        fontSize: 18, fontWeight: FontWeight.w500,color: Color(0xFF0C0C0C)
                      ),),
                      Text('Win Rewards from citizen, peter england and more', style: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF0C0C0C))),
                      TextButton(onPressed: (){}, child: Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Color(0xFF303F9F))
                          
                        ),
                        child: Text('Explore Rewards  +'),
                      ))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
