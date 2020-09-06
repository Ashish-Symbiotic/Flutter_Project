import 'package:flutter/material.dart';
void main(){
  runApp(
     MaterialApp(
      home: GridView.count(crossAxisCount: 2,
      children: <Widget>[
        Text('one'),
        Text('two'),
        Text('three'),
        Text('one'),
        Text('two'),
        


      ],
      )
     ) 
    
  );
}