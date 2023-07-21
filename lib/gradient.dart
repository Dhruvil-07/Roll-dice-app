import 'package:dice_app/dice.dart';
import 'package:flutter/material.dart';

class gradient extends StatelessWidget {
  gradient( { required this.firstcolor ,required this.secondcolor , required this.begin , required this.end  , Key? key}) : super(key: key);

  Color firstcolor , secondcolor;
  Alignment begin , end;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [ firstcolor , secondcolor ],
            begin: begin,
            end: end,
          ),
        ),
        child: dice(),
      ),
    );
  }
}
