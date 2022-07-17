import 'package:calculator/widgets/calculator_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(CalculatorApp());
}
class CalculatorApp extends StatefulWidget {
  const CalculatorApp({Key? key}) : super(key: key);
  @override
  _CalculatorAppState createState() => _CalculatorAppState();
}
class _CalculatorAppState extends State<CalculatorApp> {

  late int firstNum;
  late int secondNum;
  late String history=' ';
  late String textToDisplay='';
  late String res;
  late String operation;

  void btnOnClick(String btnval){
    print(btnval);
    if(btnval == 'C'){
      textToDisplay = '';
      firstNum= 0;
      secondNum=0;
      res= ' ';
    }else if(btnval =='AC'){
      textToDisplay = '';
      firstNum= 0;
      secondNum=0;
      res= ' ';
      history ='' ;
    } else if(btnval == '+/-'){
      if(textToDisplay[0] != '-'){
        res= '-'+textToDisplay;
      }else{
        res=textToDisplay.substring(1);
      }
    } else if(btnval == '<'){
      res=textToDisplay.substring(0, textToDisplay.length-1);

    } else if(btnval == '+' || btnval =='-' || btnval == 'X' ||btnval =='/' ){
      firstNum =int.parse(textToDisplay);
      res='';
      operation=btnval;

    }else if(btnval == '='){
      secondNum= int.parse(textToDisplay);
      if(operation == '+' ){
        res= (firstNum+ secondNum).toString();
        history=(firstNum.toString()+ operation.toString()+secondNum.toString());
      }
      if(operation == '-' ){
        res= (firstNum- secondNum).toString();
        history=(firstNum.toString()+ operation.toString()+secondNum.toString()) ;
      }
      if(operation == 'X' ){
        res= (firstNum* secondNum).toString();
        history=(firstNum.toString()+ operation.toString()+secondNum.toString()) ;
      }
      if(operation == '/' ){
        res= (firstNum/ secondNum).toString();
        history=(firstNum.toString()+ operation.toString()+secondNum.toString());
      }
    }else{
      res=int.parse(textToDisplay+btnval).toString();
    }
    setState(() {
      textToDisplay=res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(primarySwatch:Colors.blueGrey),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
        ),
        backgroundColor: Color(0xFF28527a),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(history,
                      style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                            fontSize: 24,
                            color: Color(0x66FFFFFF),
                          ),
                      ),
                    ),
                  ),
                  alignment: Alignment(1.0,1.0),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(textToDisplay,
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                        )
                      ),
                        ),
                  ),
                  alignment: Alignment(1.0,1.0),
                ),
                Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(text: 'AC',
                fillColor: 0xFF6C807F,
                textColor: 0xFF000000,
                textSize: 20,
                  callBack: btnOnClick,
                ),
                CalculatorButton(text: 'C',
                  fillColor: 0xFF6C807F,
                  textColor: 0xFF000000,
                  textSize: 24,
                  callBack: btnOnClick,
                ),
                CalculatorButton(text: '<',
                  fillColor: 0xFF6C807F,
                  textColor: 0xFF000000,
                  textSize: 24,
                  callBack: btnOnClick,
                ),

                CalculatorButton(text: '/',
                  fillColor: 0xFF6C807F,
                  textColor: 0xFF000000,
                  textSize: 24,
                  callBack: btnOnClick,
                ),
          ],
          ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorButton(text: '9',
                      fillColor: 0xFF8ac4d0,
                      textColor: 0xFF000000,
                      textSize: 24,
                      callBack: btnOnClick,
                    ),
                    CalculatorButton(text: '8',
                      fillColor: 0xFF8ac4d0,
                      textColor: 0xFF000000,
                      textSize: 24,
                      callBack: btnOnClick,
                    ),
                    CalculatorButton(text: '7',
                      fillColor: 0xFF8ac4d0,
                      textColor: 0xFF000000,
                      textSize: 24,
                      callBack: btnOnClick,
                    ),

                    CalculatorButton(text: 'X',
                      fillColor: 0xFF6C807F,
                      textColor: 0xFF000000,
                      textSize: 24,
                      callBack: btnOnClick,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorButton(text: '6',
                      fillColor: 0xFF8ac4d0,
                      textColor: 0xFF000000,
                      textSize: 24,
                      callBack: btnOnClick,
                    ),
                    CalculatorButton(text: '5',
                      fillColor: 0xFF8ac4d0,
                      textColor: 0xFF000000,
                      textSize: 24,
                      callBack: btnOnClick,
                    ),
                    CalculatorButton(text: '4',
                      fillColor: 0xFF8ac4d0,
                      textColor: 0xFF000000,
                      textSize: 24,
                      callBack: btnOnClick,
                    ),

                    CalculatorButton(text: '-',
                      fillColor: 0xFF6C807F,
                      textColor: 0xFF000000,
                      textSize: 24,
                      callBack: btnOnClick,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorButton(text: '3',
                      fillColor: 0xFF8ac4d0,
                      textColor: 0xFF000000,
                      textSize: 24,
                      callBack: btnOnClick,
                    ),
                    CalculatorButton(text: '2',
                      fillColor: 0xFF8ac4d0,
                      textColor: 0xFF000000,
                      textSize: 24,
                      callBack: btnOnClick,
                    ),
                    CalculatorButton(text: '1',
                      fillColor: 0xFF8ac4d0,
                      textColor: 0xFF000000,
                      textSize: 24,
                      callBack: btnOnClick,
                    ),

                    CalculatorButton(text: '+',
                      fillColor: 0xFF6C807F,
                      textColor: 0xFF000000,
                      textSize: 24,
                      callBack: btnOnClick,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CalculatorButton(text: '+ / -',
                      fillColor: 0xFF8ac4d0,
                      textColor: 0xFF000000,
                      textSize: 22,
                      callBack: btnOnClick,
                    ),
                    CalculatorButton(text: '0',
                      fillColor: 0xFF8ac4d0,
                      textColor: 0xFF000000,
                      textSize: 24,
                      callBack: btnOnClick,
                    ),
                    CalculatorButton(text: '00',
                      fillColor: 0xFF8ac4d0,
                      textColor: 0xFF000000,
                      textSize: 24,
                      callBack: btnOnClick,
                    ),

                    CalculatorButton(text: '=',
                      fillColor: 0xFF6C807F,
                      textColor: 0xFF000000,
                      textSize: 24,
                      callBack: btnOnClick,
                    ),
                  ],
                ),
        ],
      ),
    ),
      ),
    );
  }
}
