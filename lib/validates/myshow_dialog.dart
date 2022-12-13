import 'package:flutter/material.dart';
import '../../main.dart';

void showMyDialog({
  required String title,
  required String msg,
  required bool lsuccess,
}) {
  Widget oCloseButton = OutlinedButton(
    onPressed: () => Navigator.pop(navigatiorKey.currentContext!),
    child: const Text('Fechar'),
  );

  AlertDialog alerta = AlertDialog(
    icon: Icon(Icons.error),
    title: Text(
      title,
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    ),
    content: Text(
      msg,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
    actions: [
      oCloseButton,
      // okButton,
    ],
  );

  showDialog(
      context: navigatiorKey.currentContext!,
      builder: (BuildContext context) {
        return alerta;
      });
}
