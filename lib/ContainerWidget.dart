import 'package:first_app/StyledText.dart';
import 'package:flutter/material.dart';
class ContainerWidget extends StatelessWidget {

  final Color beginColor;

  final Color endColor;

  const ContainerWidget({super.key, required this.beginColor  ,required this.endColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        gradient: LinearGradient(
          colors: [
            beginColor,
            endColor
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: StyledText(text: "hola mundo!")
      ),
    );
  }
}