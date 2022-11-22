import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: QoutesList(),
));
class QoutesList extends StatefulWidget {

  @override
  State<QoutesList> createState() => _QoutesListState();
}

class _QoutesListState extends State<QoutesList> {
  List<String> qoutes = [
    'Unshakable faith shakes up everything!',
    'I live for the moments I dare to be me inspite of all that I "should" be',
        'Authenticity is an act of social justice.'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text(
          'Mahi Qoutes',
        style: TextStyle(
            color: Colors.black87,
          fontWeight: FontWeight.bold,
          fontSize: 26,
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: Column(
        children: qoutes.map((q) => Text(q)).toList(),
      ),
    );
  }
}
