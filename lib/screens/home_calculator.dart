import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/coustom_row.dart';

class HomeCalculator extends StatefulWidget {
  const HomeCalculator({Key? key}) : super(key: key);

  @override
  State<HomeCalculator> createState() => _HomeCalculatorState();
}

class _HomeCalculatorState extends State<HomeCalculator> {
  //int _textNumber = 0;
  dynamic displaytxt = 20;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: AlignmentDirectional.center,
        color: Colors.black,
        child: Column(
          children: [
            Spacer(
              flex: 1,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Row(
                children: [
                  Spacer(
                    flex: 1,
                  ),
                  Text(
                    text,
                    style: GoogleFonts.nanumGothic(
                      fontSize: 60,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 40,
                    height: 10,
                  )
                ],
              ),
            ),
            CoustomRow(onActionPressedOne: (){
              setState(() {
                calculation("AC");
              });
            },positionOneText: 'AC',positionOneTextColor: Colors.black,positionOneBackGroundColor: Colors.grey,
              onActionPressedTow: (){},positionTowText: '+/-',positionTowTextColor: Colors.black,positionTowBackGroundColor: Colors.grey,
              onActionPressedThree: (){},positionThreeText: '%',positionThreeTextColor: Colors.black,positionThreeBackGroundColor: Colors.grey,
              onActionPressedFour: (){
              setState(() {
                calculation('/');
              });
              },positionFourText: '÷',positionFourTextColor: Colors.white,positionFourBackGroundColor: Color(0xFFFF9500),),
            SizedBox(
              height: 10
              ,
            ),
            CoustomRow(onActionPressedOne: (){
              setState(() {
                calculation("7");

              });
            },positionOneText: '7',positionOneTextColor: Colors.white,positionOneBackGroundColor: Color(0xFF505050),
              onActionPressedTow: (){
              setState(() {
                calculation("8");
              });
              },positionTowText: '8',positionTowTextColor: Colors.white,positionTowBackGroundColor: Color(0xFF505050),
              onActionPressedThree: (){
              setState(() {
                calculation("9");
              });
              },positionThreeText: '9',positionThreeTextColor: Colors.white,positionThreeBackGroundColor: Color(0xFF505050),
              onActionPressedFour: (){
              setState(() {
                calculation('x');

              });
              },positionFourText: 'x',positionFourTextColor: Colors.white,positionFourBackGroundColor: Color(0xFFFF9500),),
            SizedBox(
              height: 10
              ,
            ),
            CoustomRow(onActionPressedOne: (){
              setState(() {
                calculation("4");
              });
            },positionOneText: '4',positionOneTextColor: Colors.white,positionOneBackGroundColor: Color(0xFF505050),
              onActionPressedTow: (){
              setState(() {
                calculation("5");
              });
              },positionTowText: '5',positionTowTextColor: Colors.white,positionTowBackGroundColor: Color(0xFF505050),
              onActionPressedThree: (){
              setState(() {
                calculation("6");
              });
              },positionThreeText: '6',positionThreeTextColor: Colors.white,positionThreeBackGroundColor: Color(0xFF505050),
              onActionPressedFour: (){
              setState(() {
                calculation('-');
              });
              },positionFourText: '-',positionFourTextColor: Colors.white,positionFourBackGroundColor: Color(0xFFFF9500),),
            SizedBox(
              height: 10
              ,
            ),
            CoustomRow(onActionPressedOne: (){
              setState(() {
                calculation("1");
              });
            },positionOneText: '1',positionOneTextColor: Colors.white,positionOneBackGroundColor: Color(0xFF505050),
              onActionPressedTow: (){
              setState(() {
                calculation("2");

              });
              },positionTowText: '2',positionTowTextColor: Colors.white,positionTowBackGroundColor: Color(0xFF505050),
              onActionPressedThree: (){
              setState(() {
                calculation("3");
              });
              },positionThreeText: '3',positionThreeTextColor: Colors.white,positionThreeBackGroundColor: Color(0xFF505050),
              onActionPressedFour: (){
              setState(() {
                calculation("+");
              });
              },positionFourText: '+',positionFourTextColor: Colors.white,positionFourBackGroundColor: Color(0xFFFF9500),),
            SizedBox(
              height: 10
              ,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  width: 20
                  ,
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 75,
                    child: ElevatedButton(onPressed:(){
                      setState(() {
                        calculation("0");

                      });
                    },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(75)

                          ),
                          primary: Color(0xFF505050)
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                        child: Text('0', style: GoogleFonts.nanumGothic(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,),
                        ),
                    ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5
                  ,
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(onPressed:(){
                    setState(() {
                      calculation(".");
                    });
                  },
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      primary: Color(0xFF505050),
                      fixedSize: const Size(75, 75),
                    ),
                    child: Text('.', style: GoogleFonts.nanumGothic(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,),
                    ),

                  ),
                ),
                SizedBox(
                  width: 5
                  ,
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed:(){
                      setState(() {
                        calculation("=");

                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFF9500),
                      shape: CircleBorder(),
                      fixedSize: const Size(75, 75),
                    ),
                    child: Text('=', style: GoogleFonts.nanumGothic(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,),


                    ),
                  ),
                ),
                SizedBox(
                  width: 10
                  ,
                ),

              ],
            ),

          ],
        ),
      ),
    );
  }
  dynamic text ='0';
  double numOne = 0;
  double numTwo = 0;

  dynamic result = '';
  dynamic finalResult = '';
  dynamic opr = '';
  dynamic preOpr = '';
  void calculation(btnText) {


    if(btnText  == 'AC') {
      text ='0';
      numOne = 0;
      numTwo = 0;
      result = '';
      finalResult = '0';
      opr = '';
      preOpr = '';

    } else if( opr == '=' && btnText == '=') {

      if(preOpr == '+') {
        finalResult = add();
      } else if( preOpr == '-') {
        finalResult = sub();
      } else if( preOpr == 'x') {
        finalResult = mul();
      } else if( preOpr == '/') {
        finalResult = div();
      }

    } else if(btnText == '+' || btnText == '-' || btnText == 'x' || btnText == '/' || btnText == '=') {

      if(numOne == 0) {
        numOne = double.parse(result);
      } else {
        numTwo = double.parse(result);
      }

      if(opr == '+') {
        finalResult = add();
      } else if( opr == '-') {
        finalResult = sub();
      } else if( opr == 'x') {
        finalResult = mul();
      } else if( opr == '/') {
        finalResult = div();
      }
      preOpr = opr;
      opr = btnText;
      result = '';
    }
    else if(btnText == '%') {
      result = numOne / 100;
      finalResult = doesContainDecimal(result);
    } else if(btnText == '.') {
      if(!result.toString().contains('.')) {
        result = result.toString()+'.';
      }
      finalResult = result;
    }

    else if(btnText == '+/-') {
      result.toString().startsWith('-') ? result = result.toString().substring(1): result = '-'+result.toString();
      finalResult = result;

    }

    else {
      result = result + btnText;
      finalResult = result;
    }


    setState(() {
      text = finalResult;
    });

  }


  String add() {
    result = (numOne + numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String sub() {
    result = (numOne - numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }
  String mul() {
    result = (numOne * numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }
  String div() {
    result = (numOne / numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }


  String doesContainDecimal(dynamic result) {

    if(result.toString().contains('.')) {
      List<String> splitDecimal = result.toString().split('.');
      if(!(int.parse(splitDecimal[1]) > 0))
        return result = splitDecimal[0].toString();
    }
    return result;
  }
}


