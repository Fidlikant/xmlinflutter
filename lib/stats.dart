import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Stats extends StatelessWidget {
  const Stats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stasts from your XML data',
        style: TextStyle(color:  Color.fromARGB(255, 255, 255, 255)
        ),
        ),
        backgroundColor: const Color.fromARGB(255, 41, 166, 228)
      ),
      body: Center(
        child: PieChart(
          PieChartData(
            sections: showingSections(),
            borderData: FlBorderData(show: false),
            sectionsSpace: 0,
            centerSpaceRadius: 40,
          ),
        ),
      ),
    );
  }
}










List<PieChartSectionData> showingSections() {
    return [
      PieChartSectionData(
        color: Colors.yellow,
        value: 15,
        title: '15%',
        radius: 50,
        titleStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: const Color(0xffffffff),
        ),
      ),
      PieChartSectionData(
        color: Colors.green,
        value: 30,
        title: '30%',
        radius: 50,
        titleStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: const Color(0xffffffff),
        ),
      ),
      PieChartSectionData(
        color: Colors.red,
        value: 45,
        title: '45%',
        radius: 50,
        titleStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: const Color(0xffffffff),
        ),
      ),
      PieChartSectionData(
        color: Colors.blue,
        value: 10,
        title: '10%',
        radius: 50,
        titleStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: const Color(0xffffffff),
        ),
      ),
    ];
}