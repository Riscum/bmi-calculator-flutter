import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.tapAction, @required this.buttonLabel});

  final Function tapAction;
  final String buttonLabel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapAction,
      child: Container(
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        padding:  EdgeInsets.only(bottom: 10.0),
        child: Center(
          child: Text(buttonLabel,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}