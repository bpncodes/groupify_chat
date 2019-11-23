import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String buttonText;
  final Function callBackFunction;
  final Color color;

  RoundedButton({this.buttonText, this.color, this.callBackFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(30.0),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [0.1, 0.5, 0.7, 0.9],
              colors: [
                Color(0xFF603D70),
                Color(0xFF394D8A),
                Color(0xFF253D65),
                Color(0xFF192B46),
              ],
            ),
          borderRadius: BorderRadius.circular(30.0),
          ),
          
          child: MaterialButton(
            onPressed: callBackFunction,
            minWidth: 200.0,
            height: 42.0,
            child: Text(
              buttonText,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
