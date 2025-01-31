import 'package:flutter/material.dart';
import 'package:intl/intl.dart';  // Add intl package in your pubspec.yaml


class Dateformate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formatDate(String format) {
      return DateFormat(format).format(now);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Date Formatter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('dd/MM/yyyy: ${formatDate("dd/MM/yyyy")}'),
            Text('dd-MM-yyyy: ${formatDate("dd-MM-yyyy")}'),
            Text('dd-MMM-yyyy: ${formatDate("dd-MMM-yyyy")}'),
            Text('dd-MM-yy: ${formatDate("dd-MM-yy")}'),
            Text('dd MMM, yyyy: ${formatDate("dd MMM, yyyy")}'),
          ],
        ),
      ),
    );
  }
}
