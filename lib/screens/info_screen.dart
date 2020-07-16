import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shellhacksmobile/styles/styles.dart';

class InfoScreen extends StatefulWidget {
  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
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
        body: ListView(
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    //FAQ
                    Row(
                      children: <Widget>[
                        SizedBox(width: 20.0),
                        Text(
                          'FAQ',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                            color: Colors.white,
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      height: 250.0,
                      width: 350.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFF2DB4E4),
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Where can I submit my code?',
                                style: Styles.faqQuestionStyle),
                            Text(
                                'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...',
                                style: Styles.faqAnswerStyle),
                            SizedBox(height: 10.0),
                            Text('What platforms will you be using?',
                                style: Styles.faqQuestionStyle),
                            Text(
                                'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...',
                                style: Styles.faqAnswerStyle),
                            SizedBox(height: 10.0),
                            Text('How can I get a mentor?',
                                style: Styles.faqQuestionStyle),
                            Text(
                                'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...',
                                style: Styles.faqAnswerStyle),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 30),

                    //Import Links
                    Row(
                      children: <Widget>[
                        SizedBox(width: 20.0),
                        Text(
                          'Important Links',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                            color: Colors.white,
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      height: 250.0,
                      width: 350.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFF2DB4E4),
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Where can I submit my code?',
                                style: Styles.faqQuestionStyle),
                            Text(
                                'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...',
                                style: Styles.faqAnswerStyle),
                            SizedBox(height: 10.0),
                            Text('What platforms will you be using?',
                                style: Styles.faqQuestionStyle),
                            Text(
                                'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...',
                                style: Styles.faqAnswerStyle),
                            SizedBox(height: 10.0),
                            Text('How can I get a mentor?',
                                style: Styles.faqQuestionStyle),
                            Text(
                                'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...',
                                style: Styles.faqAnswerStyle),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
