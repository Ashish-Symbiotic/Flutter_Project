import 'package:flutter/material.dart';
void main(){
  runApp(
     MaterialApp(
       home:HomePage()
      
      
      
     
     )
    
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Text('hey',style: TextStyle(color: Colors.white),),
    );
  }
}