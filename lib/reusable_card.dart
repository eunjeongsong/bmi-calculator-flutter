import 'package:flutter/cupertino.dart';

class ResusableCard extends StatelessWidget {
  final Color colour;
  final Widget? cardChild ;

  const ResusableCard({Key? key, required this.colour, this.cardChild})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: cardChild,
    );
  }
}
