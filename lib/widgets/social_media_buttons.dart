import 'package:flutter/material.dart';
import 'package:shellhacksmobile/styles/styles.dart';

class SocialMediaButton extends StatelessWidget{
  final IconData icon;

  const SocialMediaButton({
    @required this.icon,
  });

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.all(5.0),
        height: 40.0,
        width: 40.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            width: 1.0,
            color: Styles.white,
          ),
        ),
        child: Icon(
          icon,
          size: 20.0,
          color: Styles.white,
        ),

      ),
    );
  }
}