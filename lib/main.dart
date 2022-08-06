import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum = 1;
  int rightDiceNum = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  leftDiceNum = Random().nextInt(6) + 1; //1-6;
                });
                print('Right Button got pressed');
              },
              child: Image.asset('assets/dice$leftDiceNum.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  rightDiceNum = Random().nextInt(6) + 1;
                });
                print('Left Button got pressed');
              },
              child: Image.asset('assets/dice$rightDiceNum.png'),
            ),
          ),
        ],
      ),
    );
  }
}

// class DicePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var leftDiceNum = 3;
//     return Center(
//       child: Row(
//         children: [
//           Expanded(
//             child: TextButton(
//               onPressed: () {
//                 print('Right Button got pressed');
//               },
//               child: Image.asset('assets/dice$leftDiceNum.png'),
//             ),
//           ),
//           Expanded(
//             child: TextButton(
//               onPressed: () {
//                 print('Left Button got pressed');
//               },
//               child: Image.asset('assets/dice$leftDiceNum.png'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
