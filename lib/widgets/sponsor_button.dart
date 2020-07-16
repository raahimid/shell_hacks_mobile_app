import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shellhacksmobile/styles/styles.dart';

class SponsorButton extends StatelessWidget{
  Widget build(BuildContext context){
    return Container(
      height: 60.0,
      child: OutlineButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
        padding: EdgeInsets.all(0.0),
        child: Ink(
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xff13C8E0),
          ),
            borderRadius: BorderRadius.circular(50.0),

          ),
          child: Container(
            constraints: BoxConstraints(maxWidth: 300.0, minHeight: 70.0),
            alignment: Alignment.center,
            child: Text(
              "Sponsor",
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