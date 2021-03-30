import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Banco Exemplo S/AAA"),
      ),
      body: Container(
        child: Text("EXTRATO"),
      ),
    );
  }
}
