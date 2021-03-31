import 'dart:math';
import 'package:flutter/material.dart';
import 'models/transactions.dart';

Random rnd = Random();

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  double saldoDepo = 0.00;
  double saldoSaq = 0.00;
  List<Transaction> listTransaction = [];

  @override
  void initState() {
    super.initState();
  }

  addDeposito() {
    double deposito = rnd.nextInt(100).toDouble();
    listTransaction.add(
      Transaction(title: "Depósito 1", value: deposito),
    );

    setState(() {
      saldoDepo = saldoDepo + deposito;
    });
  }

  addSaque() {
    double saque = rnd.nextInt(1000).toDouble();
    listTransaction.add(
      Transaction(title: "Depósito 1", value: saque),
    );

    setState(() {
      saldoSaq = saldoSaq + saque;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Center(
              child: Text(
                '$saldoDepo',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            child: Center(
              child: Text(
                '$saldoSaq',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            height: 50.0,
            width: 110.0,
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(22.0),
                topLeft: Radius.circular(22.00),
                bottomRight: Radius.circular(200.0),
              ),
            ),
            child: FlatButton(
              color: Colors.green,
              child: Text(
                'Depósito',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: addDeposito,
            ),
          ),
          Container(
            height: 50.0,
            width: 110.0,
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(22.0),
                topLeft: Radius.circular(22.00),
                bottomRight: Radius.circular(200.0),
              ),
            ),
            child: FlatButton(
              color: Colors.green,
              child: Text(
                'Saque',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: addSaque,
            ),
          ),
        ],
      ),
    );
  }
}
