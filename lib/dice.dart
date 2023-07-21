import 'dart:math';

import 'package:dice_app/style_text.dart';
import 'package:flutter/material.dart';

final randomier = Random();

class dice extends StatefulWidget {
  const dice({Key? key}) : super(key: key);

  @override
  State<dice> createState() => _diceState();
}

class _diceState extends State<dice> {

   var curentimagenum = 2;

   bool value = false;

  //method for chaange dice
  void roll_dice()
  {
    setState((){
      curentimagenum = randomier.nextInt(6) + 1;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [

              styletext(fontwidth: FontWeight.bold, fontsize: 40, fontcolor: Colors.black, containt: curentimagenum.toString()),

             SizedBox(height: 50.0,),

             Image.asset(
                'assest/images/dice-$curentimagenum.png',
                width: 200.0,
                fit: BoxFit.fill,
              ),

              SizedBox(height: 80.0,),

              TextButton(

                  onPressed: (){ roll_dice(); },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  child: styletext(fontwidth: FontWeight.bold, fontsize: 20, fontcolor: Colors.white, containt: "ROLL DICE")
              ),


           ],
        ),
    );
  }
}


/*

//button disable on condition

    SizedBox(height: 30,),

    Checkbox(
      activeColor: Colors.red,
      checkColor: Colors.white,
      value: this.value,
      onChanged: (var value){
        setState(() {
        this.value = value!;
        });
      }
    ),

    SizedBox(height: 30,),

    RaisedButton(onPressed: value == false ? null : (){}, child: Text("button"),)
    ,

*/
