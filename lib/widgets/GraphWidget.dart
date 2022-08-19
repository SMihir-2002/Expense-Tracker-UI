import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GraphWidget extends StatefulWidget {
  Size size;
  GraphWidget({Key? key, required this.size}) : super(key: key);

  @override
  State<GraphWidget> createState() => _GraphWidgetState(size: size);
}

class _GraphWidgetState extends State<GraphWidget> {
  Size size;
  _GraphWidgetState({required this.size});
  @override
  Widget build(BuildContext context) {
    int TotalSpend = 15000;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "₹" + TotalSpend.toString(),
            style: GoogleFonts.poppins(
              fontSize: 32,
              fontWeight: FontWeight.w600,
              color: Color(0xFFFFFFFF),
      
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:5.0),
            child: Container(
              height: size.height*0.25,
              child: LineChart(
                LineChartData(
                  titlesData: FlTitlesData(
                show: false,
              ),
                  minX: 0,
                  maxX: 30,
                  minY: 0,
                  maxY: 4,
                  gridData: FlGridData(
                    show: false
                  ),
                  borderData: FlBorderData(show: false),
                  lineBarsData: [
                    LineChartBarData(
                  dotData:FlDotData(show: false),
                      isCurved: true,
                      color: Colors.white,
                    barWidth: 3,
                    
                      spots: [
                        FlSpot(-10, 0),
                        FlSpot(0, 0),
                        FlSpot(1,1),
                      FlSpot(5,2),
                      FlSpot(10,1),
                      FlSpot(16,2.5),
                      FlSpot(20,2),
                      FlSpot(30,2.5),

                      
                      ]
      
                    )
                  ]
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}
