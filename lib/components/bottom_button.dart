import 'package:flutter/cupertino.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key? key,
    required this.onTab,
    required this.buttonTitle,
  }) : super(key: key);

  final VoidCallback onTab;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        color: kButtonContainerColour,
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kButtonContainerHeight,
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}