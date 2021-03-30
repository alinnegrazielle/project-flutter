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
<<<<<<< HEAD
        title: Text("Banco Exemplo S/AAA"),
=======
        title: Text("Banco Exemplo S/A"),
>>>>>>> parent of 7af2e79 (created ALINNE)
      ),
      body: Container(
        child: Text("EXTRATO"),
      ),
    );
  }
}
