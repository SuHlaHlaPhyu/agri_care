import 'package:flutter/material.dart';

class AgriCareButton extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final Function onTap;
  final double cornerRadius;
  final double elevation;
  final Widget tailing;

  const AgriCareButton(
      {Key key,
        @required this.text,
        this.width,
        this.height,
        this.textColor,
        this.backgroundColor,
        this.cornerRadius,
        this.elevation,
        this.tailing,
        @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: elevation ?? 2,
      color: backgroundColor ?? Colors.black,
      minWidth: width ?? MediaQuery.of(context).size.width,
      height: height ?? 36,
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(cornerRadius ?? 30.0),
      ),
      child: Stack(
        children: [
          Center(
            child: Text(
              text,
              style: TextStyle(
                color: textColor ?? Colors.white,
                fontFamily: 'pyidaungsu',
              ),
            ),
          ),
          if (tailing != null)
            Align(
              alignment: Alignment.centerRight,
              child: tailing,
            )
        ],
      ),
      onPressed: onTap,
    );
  }
}
