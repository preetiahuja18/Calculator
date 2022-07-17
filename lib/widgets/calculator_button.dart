import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CalculatorButton extends StatelessWidget {
  final String text;
  final int fillColor;
  final int textColor;
  final double textSize;
  final Function callBack;
  const CalculatorButton({
    required this.text,
    required this.fillColor,
    required this.textColor,
    required this.textSize,
    required this.callBack,
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.all(10.0),
      child: SizedBox(
        width:60,
        height:60,
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),

          child:Text(text,
            style: GoogleFonts.rubik(
              textStyle:TextStyle(
                fontSize:textSize,
              ),
            ),
          ),
          onPressed: ()  => callBack(text),
          color:Color(fillColor),
          textColor: Color(textColor),
        ),

    ),);
  }
}
