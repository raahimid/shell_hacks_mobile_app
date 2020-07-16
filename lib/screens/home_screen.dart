import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shellhacksmobile/main.dart';
import 'package:shellhacksmobile/styles/styles.dart';
import 'package:shellhacksmobile/widgets/social_media_buttons.dart';
import 'package:shellhacksmobile/widgets/widgets.dart';
import 'package:flutter_countdown_timer/countdown_timer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        body: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 60.0, 15.0, 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Spacer(),
                    CountdownTimer(
                      endTime: DateTime.parse("2020-09-25 20:00:00Z")
                          .millisecondsSinceEpoch,
                      defaultDays: "==",
                      defaultHours: "--",
                      defaultMin: "**",
                      defaultSec: "++",
                      daysSymbol: "    ",
                      hoursSymbol: "    ",
                      minSymbol: "    ",
                      secSymbol: "",
                      daysTextStyle: GoogleFonts.openSans(
                        color: Styles.white,
                        fontSize: 55,
                        fontWeight: FontWeight.bold,
                      ),
                      hoursTextStyle: GoogleFonts.openSans(
                        color: Styles.white,
                        fontSize: 55,
                        fontWeight: FontWeight.bold,
                      ),
                      minTextStyle: GoogleFonts.openSans(
                        color: Styles.white,
                        fontSize: 55,
                        fontWeight: FontWeight.bold,
                      ),
                      secTextStyle: GoogleFonts.openSans(
                        color: Styles.white,
                        fontSize: 55,
                        fontWeight: FontWeight.bold,
                      ),
                      daysSymbolTextStyle: GoogleFonts.openSans(),
                      hoursSymbolTextStyle: GoogleFonts.openSans(),
                      minSymbolTextStyle: GoogleFonts.openSans(),
                      secSymbolTextStyle: GoogleFonts.openSans(),
                    ),
                    Spacer(),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Spacer(),
                    Text(
                      'days',
                      style: Styles.timeLabel,
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      'hrs',
                      style: Styles.timeLabel
                      ),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      'mins',
                      style: Styles.timeLabel,
                      ),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      'secs',
                      style: Styles.timeLabel
                    ),
                    Spacer(),
                  ],
                ),
                SizedBox(height: 20.0),
                Text(
                  'Until',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 23.0,
                    color: Styles.white,
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  'FLORIDA\'S LARGEST\nHACKATHON',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    color: Styles.white,
                  ),
                ),
                SizedBox(height: 5.0),
                Text(
                  'September 25th - 27th, 2020\nFlorida International University',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w300,
                    fontSize: 16.0,
                    color: Styles.white,
                  ),
                ),
                SizedBox(height: 20.0),
                GradientButton(),
                SizedBox(height: 20.0),
                SponsorButton(),
                SizedBox(height: 15.0),
                Row(
                  children: <Widget>[
                    Spacer(),
                    SocialMediaButton(
                      icon: FontAwesomeIcons.discord,
                    ),
                    SocialMediaButton(
                      icon: FontAwesomeIcons.facebook,
                    ),
                    SocialMediaButton(
                      icon: FontAwesomeIcons.instagram,
                    ),
                    SocialMediaButton(
                      icon: FontAwesomeIcons.twitter,
                    ),
                    SocialMediaButton(
                      icon: FontAwesomeIcons.linkedin,
                    ),
                    Spacer(),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
