import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components//reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.bmiResults, @required  this.interpretation, @required  this.resultText});

  final String bmiResults;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Results Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text(
                'Your Result',
                style: kLargeTextStyle,
              ),
              padding: EdgeInsets.only(top: 25, left: 25),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    this.resultText.toUpperCase(),
                    style: kResultsTextStyle,
                  ),
                  Text(
                    this.bmiResults,
                    style: kBMITextStyle,
                  ),
                  Text(
                    this.interpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              tapAction: () => Navigator.pop(context),
              buttonLabel: 'Re-Calculate'),
        ],
      ),
    );
  }
}
