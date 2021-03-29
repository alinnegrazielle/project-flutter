import 'package:app_financial_transactions/transactions.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  var dep = new Deposit();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Banco Exemplo S/A"),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            //primeiro item envolto no padding
            padding: EdgeInsets.all(20), // espaçamento
            child: Text(
              dep.deposit,
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            //primeiro item envolto no padding
            padding: EdgeInsets.all(20), // espaçamento
            child: FlatButton(
              color: Theme.of(context).primaryColor,
              child: Text(
                "Depósito",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(() {});
              },
            ),
          ),
          Padding(
            //primeiro item envolto no padding
            padding: EdgeInsets.all(20), // espaçamento
            child: FlatButton(
              color: Theme.of(context).primaryColor,
              child: Text(
                "Saque",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
