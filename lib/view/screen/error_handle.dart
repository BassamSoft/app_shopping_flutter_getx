import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

customeErrorScreen(){
  return ErrorWidget.builder=(detial){
return Material(
  child: Container(
   color:Colors.black87,
   child:Column(
     mainAxisAlignment:MainAxisAlignment.center,
     children: [
       Image.asset('assets/images/error.png'),
       SizedBox(height:20),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Text(
           detial.exception.toString(),
           style:TextStyle(
             color: Colors.white,
             fontSize: 18,
             
           ),
           textAlign: TextAlign.center,
         ),
       )
     ],
   ) 
  )
);

  
  };
}