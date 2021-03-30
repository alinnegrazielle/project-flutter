import 'package:flutter/material.dart';
import 'models/transactions.dart';

class HomePage extends StatefulWidget {
  var itens = new List<Transaction>();

  HomePage() {
    itens = [];
    itens.add(Transaction(title: "Depósito 1"));
    itens.add(Transaction(title: "Depósito 2"));
    itens.add(Transaction(title: "Depósito 3"));
  }

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
      body: ListView.builder(
        itemCount: widget.itens.length,
        itemBuilder: (BuildContext ctxt, int index) {
          return Text(widget.itens[index].title);
        },
      ),
    );
  }

  buildListView() {
    final dep = List<String>.generate(5, (i) => "Depósito $i");

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
