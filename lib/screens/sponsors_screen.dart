import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/avd.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gradient_text/gradient_text.dart';

class SponsorsScreen extends StatefulWidget {
  @override
  _SponsorsScreenState createState() => _SponsorsScreenState();
}

class _SponsorsScreenState extends State<SponsorsScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Color(0xFF1A0551), Color(0xFF3E0765)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(15.0, 40.0, 15.0, 20.0),
          child: Column(
            children: <Widget>[
              GradientText("Sponsors",
                gradient: LinearGradient(
                    colors: [Color(0xFF29B6E3),Color(0xFFF404FE),]),
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 45.0,
                  color: Colors.white,
                ),
              ),
              Expanded(
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(15.0),
                  crossAxisSpacing: 50.0,
                  mainAxisSpacing: 0,
                  crossAxisCount: 2,
                  children: <Widget>[

                    SvgPicture.asset(
                      'assets/images/google_logo.svg',
                      color: Colors.white,
                      semanticsLabel: 'Google Logo',
                    ),
                    SvgPicture.asset(
                      'assets/images/twitter_logo.svg',
                      color: Colors.white,
                      semanticsLabel: 'Twitter',
                    ),
                    SvgPicture.asset(
                      'assets/images/statefarm_logo.svg',
                      color: Colors.white,
                      semanticsLabel: 'Statefarm Logo',
                    ),
                    SvgPicture.asset(
                      'assets/images/assurant_logo.svg',
                      color: Colors.white,
                      semanticsLabel: 'Assurant Logo',
                    ),
                    SvgPicture.asset(
                      'assets/images/xbox_logo.svg',
                      color: Colors.white,
                      semanticsLabel: 'Xbox Logo',
                    ),
                    SvgPicture.asset(
                      'assets/images/balsamiq logo.svg',
                      color: Colors.white,
                      semanticsLabel: 'Balsamiq Logo',
                    ),
                    SvgPicture.asset(
                      'assets/images/linode_logo.svg',
                      color: Colors.white,
                      semanticsLabel: 'Linode Logo',
                    ),
                    SvgPicture.asset(
                      'assets/images/gcp_logo.svg',
                      color: Colors.white,
                      semanticsLabel: 'GCP Logo',
                    ),
                    SvgPicture.asset(
                      'assets/images/fl_panthers_logo.svg',
                      color: Colors.white,
                      semanticsLabel: 'FL Panthers Logo',
                    ),
                    SvgPicture.asset(
                      'assets/images/heroku_logo.svg',
                      color: Colors.white,
                      semanticsLabel: 'Heroku Logo',
                    ),
                    SvgPicture.asset(
                      'assets/images/twilio_logo.svg',
                      color: Colors.white,
                      semanticsLabel: 'Twilio Logo',
                    ),
                    SvgPicture.asset(
                      'assets/images/wolfram_logo.svg',
                      color: Colors.white,
                      semanticsLabel: 'Wolfram Logo',
                    ),
                    SvgPicture.asset(
                      'assets/images/jetbrains_logo.svg',
                      color: Colors.white,
                      semanticsLabel: 'Jetbrains Logo',
                    ),
                    SvgPicture.asset(
                      'assets/images/stickermule_logo.svg',
                      color: Colors.white,
                      semanticsLabel: 'Stickermule Logo',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
