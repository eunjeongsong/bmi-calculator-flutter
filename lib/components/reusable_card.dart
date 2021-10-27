import 'package:flutter/cupertino.dart';

class ResusableCard extends StatelessWidget {
  const ResusableCard(
      {Key? key, required this.colour, this.cardChild, this.onPress})
      : super(key: key);

  final Color colour;
  final Widget? cardChild;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}
