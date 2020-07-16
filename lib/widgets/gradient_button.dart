import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shellhacksmobile/styles/styles.dart';

class GradientButton extends StatelessWidget{
  Widget build(BuildContext context){
    return Container(
      height: 60.0,
      child: RaisedButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
        padding: EdgeInsets.all(0.0),
        child: Ink(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Color(0xff29B6E3), Color(0xffF404FE)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(30.0)
          ),
          child: Container(
            constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
            alignment: Alignment.center,
            child: Text(
              "Register Now!",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 23.0,
                color: Styles.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}