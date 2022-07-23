import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();

}



class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 4,),(){
      Navigator.pushReplacementNamed(context, '/home_calculator');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: AlignmentDirectional.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
              colors: [
                Color(0xFFE2DCC8),
                Color(0xFFF1F1F1),
              ]

          )
        ),
        child: Text(
          "App Calculator",
          style: GoogleFonts.abhayaLibre(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),

        ),
      ),
    );
  }
}
