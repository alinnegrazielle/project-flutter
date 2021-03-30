import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Banco Exemplo S/A"),
      ),
      body: buildListView(),
    );
  }

  buildListView() {
    final dep = List<String>.generate(3, (i) => "Depósito $i");

    return ListView.builder(
      itemCount: dep.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('${dep[index]}'),
          subtitle: Text("29/03/2021"),
        );
      },
    );
  }
}
