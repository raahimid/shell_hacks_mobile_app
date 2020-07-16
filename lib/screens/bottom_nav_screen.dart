import 'package:flutter/material.dart';
import 'package:shellhacksmobile/screens/home_screen.dart';
import 'package:shellhacksmobile/screens/info_screen.dart';
import 'package:shellhacksmobile/screens/schedule_screen.dart';
import 'package:shellhacksmobile/screens/sponsors_screen.dart';
import 'package:shellhacksmobile/widgets/gradient_icon.dart';
import 'dart:ui' as ui;

class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  final List _screens = [
    HomeScreen(),
    SponsorsScreen(),
    ScheduleScreen(),
    InfoScreen(),
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 30.0,
        elevation: 0.0,
        items: [Icons.home, Icons.loyalty, Icons.schedule, Icons.info]
            .asMap()
            .map((key, value) => MapEntry(
                  key,
                  BottomNavigationBarItem(
                    title: Text(''),
                    icon: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 6.0,
                        horizontal: 16.0,
                      ),
                      child: LinearGradientMask(
                        child: Icon(
                          value,
                        ),
                      ),
                    ),
                  ),
                ))
            .values
            .toList(),
      ),
    );
  }
}
class LinearGradientMask extends StatelessWidget {
  LinearGradientMask({this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcATop,
      shaderCallback: (bounds) => LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color(0xFF30AFE4), Color(0xff9657F1),Color(0xFFF703FE)],
      ).createShader(bounds),
      child: child,
    );
  }
}
