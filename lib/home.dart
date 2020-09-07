import 'package:flutter/material.dart';


// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.red,
//       child: Text('hey',style: TextStyle(color: Colors.white),),
//     );
//   }
// }
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('I am a Stateful widget'),
      
      
    );
  }
} 