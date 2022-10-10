import 'package:flutter/material.dart';
import 'package:fasterbmi/formula.dart';

class ResultsPage extends StatefulWidget {
  int height;
  int weight;
  int age;

  ResultsPage({required this.height, required this.weight, required this.age});
  @override
  _ResultsPageState createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  Logic logic = Logic();
  double bmiResult = 0;
  @override
  void initState() {
    bmiResult = logic.calculateBMI(widget.height, widget.weight);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Faster BMI'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'BMI Result',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              Text(
                '${bmiResult.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 70,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ));
  }
}
