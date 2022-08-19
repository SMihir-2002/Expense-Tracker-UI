import 'package:expense_tracker/widgets/modeOfpayment.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class bottomSheet extends StatefulWidget {
  Size size;
  bottomSheet({Key? key, required this.size}) : super(key: key);

  @override
  State<bottomSheet> createState() => _bottomSheetState(size: size);
}

class _bottomSheetState extends State<bottomSheet> {
  Size size;
  _bottomSheetState({required this.size});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        
        width: size.width,
        height: size.height * 0.8,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Material(
              color: Colors.white,
              elevation: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Color(0xFF2F2F30),
                        )),
                    Text(
                      'Adding Transaction',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(0xFF0C0C0C)),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    Text(
                      'Enter Spend Amount',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color(0xFF0C0C0C),
                      ),
                    ),
                    Text(
                        "Enter the amount that you have spend without using zero balance.",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xFF757575))),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Color(0xFF303F9F))
                              
                            ),
                            child: TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                fillColor: Colors.transparent,
                                filled: true,
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Positioned(
                            top: -9,
                            left: 15,
                            child: Container(
                              color: Colors.white,
                              child: Text(
                                'Amount',
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF303F9F)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text('Enter Date',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500, fontSize: 16)),
                    Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(
                                  color: Color(0xFFEEEEEE)
                                )
                              ),
                              child: TextField(
                      keyboardType: TextInputType.datetime,
                      decoration: InputDecoration(
                        
                        fillColor: Colors.transparent,
                        filled: true,
                        border: InputBorder.none,
                        ),
                      ),
                            ),
                    Text(
                      'Mode of Payment',
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF0C0C0C)),
                    ),
                      
                       Row(
                         
                        children: [
                              paymentMode(txt: "UPI", size: size),
                              paymentMode(txt: "Card", size: size),
                              paymentMode(txt: "Cash", size: size),
                          
                        ],
                      ),
                    Text('QuickNote',style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500, fontSize: 16)),
                            Container(
    
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xFFEEEEEE)
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: TextField(
                      decoration: InputDecoration(
                        hintText: "Quick Note",hintStyle: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 16),
                        fillColor: Colors.transparent,
                        filled: true,
                        border: InputBorder.none,
                        ),
                      ),
                            ),
                    
                    FloatingActionButton.extended(onPressed: (){
    
                      setState(() {
                        
                      });
                    },
                    elevation: 1,
                    backgroundColor: Color(0xFF303F9F),
                     label: Container(
                      width: size.width*0.8,
                    alignment: Alignment.center,
                      child: Text("SAVE")) , )
                    
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
