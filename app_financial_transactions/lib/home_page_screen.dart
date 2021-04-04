import 'dart:math';
import 'package:flutter/material.dart';
import 'models/transactions.dart';

import 'package:rflutter_alert/rflutter_alert.dart';

Random rnd = Random();

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  double saldo = 0.00;
  List<Transaction> listTransaction = [];


  @override
  void initState() {
    super.initState();
  }

  addDeposito() {
    double deposito = rnd.nextInt(100).toDouble();
    listTransaction.add(
      Transaction(title: "Depósito", value: deposito),
    );

    setState(() {
      saldo = saldo + deposito;
    });
  }

  addSaque() {
    double saque = rnd.nextInt(50).toDouble();
    if ((saldo - saque) < 0.0){
      return Alert(
      context: context,
      type: AlertType.warning,
      title: "Saldo insuficiente",
      desc: "Sua conta não tem saldo suficiente para fazer o saque solicitado no valor de $saldo reais",
      buttons: [
        DialogButton(
          child: Text(
            "VOLTAR",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          width: 120,
        )
      ],
    ).show();
    }else{
      listTransaction.add(
      Transaction(title: "Saque", value: saque),
      );

      setState(() {
        saldo = saldo - saque;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 70,
            child: Center(
              child: Text(
                '$saldo',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 15,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
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
          ),
          Expanded(
            flex: 15,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: FlatButton(
                color: Colors.red,
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
          ),
        ],
      ),
    );
  }
}
