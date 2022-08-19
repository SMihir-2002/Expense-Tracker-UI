import 'package:expense_tracker/screens/bottomSheet.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class dataEntry extends StatefulWidget {
  Size size;
  dataEntry({Key? key, required this.size}) : super(key: key);

  @override
  State<dataEntry> createState() => _dataEntryState(size: size);
}

class _dataEntryState extends State<dataEntry> {
  int cardBalance = 1500;
  int saving = 2000;
  Size size;
  _dataEntryState({required this.size});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.2,
      width: size.width * 0.75,
      child: Row(
        children: [
          Expanded(
              child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 8, bottom: 4),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 28,
                                  width: 28,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    color: Color(0xFE19500),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8.0, top: 8),
                                  child: Image(
                                      image: AssetImage("images/savings.png")),
                                )
                              ],
                            ),
                            Text(
                              '  Projected Saving',
                              style: GoogleFonts.poppins(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        Text(saving.toString(),
                            style: GoogleFonts.roboto(
                                fontSize: 18, fontWeight: FontWeight.w500))
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0, top: 4),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 28,
                                  width: 28,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    color: Color.fromARGB(255, 240, 224, 220),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(
                                      image: AssetImage("images/fastFood.png")),
                                )
                              ],
                            ),
                            Text(
                              '  Higest Spent',
                              style: GoogleFonts.poppins(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        Text(saving.toString(),
                            style: GoogleFonts.roboto(
                                fontSize: 18, fontWeight: FontWeight.w500))
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Card Balance",
                      ),
                      Row(
                        children: [
                          Text("₹$cardBalance",
                              style: GoogleFonts.poppins(
                                  fontSize: 24, fontWeight: FontWeight.w600)),
                          Container(
                            child: (cardBalance < 15000)
                                ? Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.red[200],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text('Low Bal',style: GoogleFonts.poppins(
                                  fontSize: 12, fontWeight: FontWeight.w400)),
                                    ),
                                  )
                                : Container(),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0),
                        child: Container(
                          height: 84,
                          width: 84,
                          child: FloatingActionButton(
                            onPressed: () {
                              showModalBottomSheet(
                                isScrollControlled: true,
                                  context: context,
                                  builder: (context) =>
                                      bottomSheet(size: size));
                            },
                            backgroundColor: Color(0xFF303F9F),
                            child: Text('Add',
                                style: GoogleFonts.poppins(fontSize: 16)),
                          ),
                        ),
                      )
                    ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
