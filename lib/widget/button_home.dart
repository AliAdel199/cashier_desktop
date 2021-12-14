// ignore: file_names
import 'package:flutter/material.dart';

import '../my_constatnt.dart';

class MyButton extends StatelessWidget {
  MyButton(
      {Key? key,
        this.alignment,
        this.width,
        this.title,
        this.height,
        this.onTap})
      : super(key: key);
  double? width;
  double? height;
  String? title;
  String? alignment;
  VoidCallback? onTap;

  var radius = const Radius.circular(40.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment:
      alignment == "l" ? Alignment.centerLeft : Alignment.centerRight,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.white,
          shadowColor: Colors.black,
          elevation: 10,
          shape: RoundedRectangleBorder(
              borderRadius: alignment == "l"
                  ? BorderRadius.only(bottomRight: radius, topRight: radius)
                  : BorderRadius.only(topLeft: radius, bottomLeft: radius)),
        ),
        child: Container(
          width: width,
          height: height,
          child: Center(
            child: Text(
              title!,
              style: myTextStyle,
              textAlign: TextAlign.right,
            ),
          ),
        ),
        onPressed: onTap,
      ),
    );
  }
}
