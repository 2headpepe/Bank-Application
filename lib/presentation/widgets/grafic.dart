
import 'package:flutter/cupertino.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'dart:async';

///Graphic - widget used for graphic of currencies rates in app
class Graphic extends StatefulWidget {
  final int term; //0 is microsecond, 1 is second, 2 is minute, 3 is hour
  const Graphic({Key? key, required this.term}) : super(key: key);

  @override
  State<Graphic> createState() => _GraphicState();
}

class ChartData {
  static List<SalesData> chartData = [];

  static void updateChartData({required SalesData salesData}) {
    if (chartData.length >= 10) chartData.removeAt(0);

    chartData.add(salesData);
  }
}

class SalesData {
  final double date;
  final double sales;

  SalesData(this.date, this.sales);
}

class _GraphicState extends State<Graphic> {
  late List<SalesData> _chartData;

  @override
  void initState() {
    _chartData = ChartData.chartData;
    final periodicTimer = Timer.periodic(
      Duration(
          milliseconds: (widget.term == 0) ? 1 : 0,
          seconds: (widget.term == 1) ? 1 : 0,
          minutes: (widget.term == 2) ? 1 : 0,
          hours: (widget.term == 3) ? 1 : 0,
          
          ),
      (timer) {
        //var rates = (await CurrencyRepo.getRates("USD", "EUR")).quotes['EUR'];
      //if(this.mounted)
        setState(() {
          double date = DateTime.now().minute.toDouble() +
                  DateTime.now().second.toDouble() /
              100;
          SalesData salesData = SalesData(date, date*100%100);
          ChartData.updateChartData(salesData: salesData);
        });
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<SalesData> chartData = ChartData.chartData;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
        height: height / 2,
        width: width * 0.9,
        child: SfCartesianChart(
          series: _getUpdateDataSourceSeries(),
        ));
  }

  List<LineSeries<SalesData, double>> _getUpdateDataSourceSeries() {
    List<SalesData> chartData = ChartData.chartData;
    return <LineSeries<SalesData, double>>[
      LineSeries<SalesData, double>(
          dataSource: chartData,
          xValueMapper: (SalesData sales, _) => sales.date,
          yValueMapper: (SalesData sales, _) => sales.sales)
    ];
  }
}
