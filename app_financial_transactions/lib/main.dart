import 'package:flutter/material.dart';

import 'home_page.dart';

import 'dart:math';

void main() {
  runApp(MyApp());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Banco Exemplo S/ALINNE"),
      ),
      body: Container(
        child: Text("EXTRATO"),
      ),
    );
  }
}

// class GeneratedActions extends StatefulWidget {
//   @override
//   _GeneratedActionsState createState() {
//     return _GeneratedActionsState();
//   }
// }

// class _GeneratedActionsState extends State<GeneratedActions> {
//   random(min, max){
//     var rn = new Random();
//     return min + rn.nextInt(max - min);
//   }
// }

// print(random(5, 20));
