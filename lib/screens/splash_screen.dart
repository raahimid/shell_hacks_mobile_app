import 'package:flutter/material.dart';
import 'dart:async';
import 'bottom_nav_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    _mockCheckForSession().then((status) {
      if (status) {
        _navigateToHome();
      } else {
        _navigateToLogin();
      }
    });
  }

  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(milliseconds: 6000), () {});

    return true;
  }

  void _navigateToHome() {
    Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (BuildContext context) => BottomNavScreen()));
  }

  void _navigateToLogin() {
    Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (BuildContext context) => BottomNavScreen()));
  }

  @override
  Widget build(BuildContext context) {
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
                Spacer(),
                Image.asset(
                  'assets/images/sh_logo.png',
                ),
                SizedBox(height: 60.0),
                Image.asset(
                  'assets/images/shell.png',
                  scale: 1.25,
                ),
                SizedBox(height: 70.0),
                Row(
                  children: <Widget>[
                    Spacer(),
                    Image.asset('assets/images/fiu_logo.png'),
                    SizedBox(width: 15.0),
                    Image.asset('assets/images/upe_logo.png'),
                    Spacer(),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
