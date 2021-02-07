import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fitness_app/res/MyColors.dart';

class MyLineChart extends StatefulWidget {
  @override
  _MyLineChartState createState() => _MyLineChartState();
}

class _MyLineChartState extends State<MyLineChart> {
  List<Color> gradientColors = [
    const Color(0xffF0CABD),
    MyColor.secondary,
    MyColor.secondary,
    const Color(0xffF0CABD),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 1.70,
          child: Container(
            child: LineChart(
              mainData()
            ),
          ),
        )
      ],
    );
  }

  LineChartData mainData(){
    return LineChartData(
      gridData: FlGridData(
        show: false
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          getTextStyles: (value) => const TextStyle(fontSize: 16.0,color: Colors.black87),
          getTitles: (value){
            switch(value.toInt()){
              case 2 : return '1 km';
              case 4 : return '2 km';
              case 6 : return '3 km';
              case 8 : return '4 km';
              case 10 : return '5 km';
            }
            return '';
          },
          margin: 8
        ),
        leftTitles: SideTitles(
          showTitles: false
        ),
      ),
      borderData: FlBorderData(show: false),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 6,
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 3),
            FlSpot(2, 2),
            FlSpot(4, 5),
            FlSpot(6, 3.1),
            FlSpot(8, 4),
            FlSpot(10, 3),
            FlSpot(12, 7),
          ],
          isCurved: true,
          colors: gradientColors,
          barWidth: 5,
          isStrokeCapRound: false,
          dotData: FlDotData(
            show: false
          ),
          belowBarData: BarAreaData(
            show: true,
            colors: gradientColors.map((color) => color.withOpacity(0.3)).toList(),
          )
        )
      ]
    );
  }
}
