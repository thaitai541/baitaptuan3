import 'package:flutter/material.dart';

import '../constant.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Function press;
  const DefaultButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: ElevatedButton(
        //padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        //color: kPrimaryColor,
        onPressed: press(),
        style: ElevatedButton.styleFrom(
            side: BorderSide(width: 8, color: Colors.yellow)),
        child: Text(
          text.toUpperCase(),
        ),
      ),
    );
  }
}
