import 'package:flutter/material.dart';
import 'package:jumping_chooghoor/constants.dart';

class TheBird extends StatelessWidget {
  const TheBird({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      child: Image.asset(Constants.birdImage),
    );
  }
}
