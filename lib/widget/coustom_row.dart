import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoustomRow extends StatelessWidget {
  const CoustomRow({
    Key? key,
    required this.positionOneText,
    required this.positionOneTextColor,
    required this.positionOneBackGroundColor,
    required this.onActionPressedOne,


    required this.positionTowText,
    required this.positionTowTextColor,
    required this.positionTowBackGroundColor,
    required this.onActionPressedTow,


    required this.positionThreeText,
    required this.positionThreeTextColor,
    required this.positionThreeBackGroundColor,
    required this.onActionPressedThree,


    required this.positionFourText,
    required this.positionFourTextColor,
    required this.positionFourBackGroundColor,
    required this.onActionPressedFour,



  }) : super(key: key);

  final String positionOneText;
  final Color positionOneTextColor;
  final Color positionOneBackGroundColor;
  final void Function() onActionPressedOne;


  final String positionTowText;
  final Color positionTowTextColor;
  final Color positionTowBackGroundColor;
  final void Function() onActionPressedTow;


  final String positionThreeText;
  final Color positionThreeTextColor;
  final Color positionThreeBackGroundColor;
  final void Function() onActionPressedThree;


  final String positionFourText;
  final Color positionFourTextColor;
  final Color positionFourBackGroundColor;
  final void Function() onActionPressedFour;



  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(
          flex: 1,
        ),
        ElevatedButton(onPressed: onActionPressedOne,
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            fixedSize: const Size(75, 75),
            primary: positionOneBackGroundColor,
          ),
          child: Text(positionOneText, style: GoogleFonts.nanumGothic(
            fontSize: 24,
            color: positionOneTextColor,
            fontWeight: FontWeight.bold,),
          ),
        ),
        Spacer(
          flex: 1,
        ),
        ElevatedButton(onPressed:onActionPressedTow,
          style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              fixedSize: const Size(75, 75),
              primary: positionTowBackGroundColor
          ),
          child: Text(positionTowText, style: GoogleFonts.nanumGothic(
            fontSize: 24,
            color: positionTowTextColor,
            fontWeight: FontWeight.bold,),
          ),
        ),
        Spacer(
          flex: 1,
        ),
        ElevatedButton(onPressed:onActionPressedThree,
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            primary: positionThreeBackGroundColor,
            fixedSize: const Size(75, 75),
          ),
          child: Text(positionThreeText, style: GoogleFonts.nanumGothic(
            fontSize: 24,
            color: positionThreeTextColor,
            fontWeight: FontWeight.bold,),
          ),

        ),
        Spacer(
          flex: 1,
        ),
        ElevatedButton(
          onPressed:onActionPressedFour,
          style: ElevatedButton.styleFrom(
            primary: positionFourBackGroundColor,
            shape: CircleBorder(),
            fixedSize: const Size(75, 75),
          ),
          child: Text(positionFourText, style: GoogleFonts.nanumGothic(
            fontSize: 30,
            color: positionFourTextColor,
            fontWeight: FontWeight.bold,),
          ),
        ),
        Spacer(
          flex: 1,
        ),
      ],
    );
  }
}
