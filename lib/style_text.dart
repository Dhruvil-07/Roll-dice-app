import 'package:flutter/material.dart';

class styletext extends StatelessWidget {
  styletext({required this.fontwidth , required this.fontsize , required this.fontcolor , required this.containt ,super.key});

  var fontsize , fontwidth , fontcolor , containt;

  @override
  Widget build(BuildContext context)
  {
     return Text(containt ,
     style: TextStyle(
       fontSize: fontsize ,
       fontWeight: fontwidth,
       color: fontcolor ,
     ),
     );
  }

}