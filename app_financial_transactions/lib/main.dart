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
        title: Text("Banco Exemplo S/A"),
      ),
      body: Container(
        child: Text("EXTRATO"),
      ),
    );
  }
}
