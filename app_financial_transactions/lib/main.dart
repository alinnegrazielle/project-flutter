import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Banco Exemplo S/A',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Banco Exemplo S/A"),
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
