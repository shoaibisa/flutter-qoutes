import 'package:flutter/material.dart';
import 'qoutes.dart';
void main() => runApp(MaterialApp(
  home: QoutesList(),
));
class QoutesList extends StatefulWidget {

  @override
  State<QoutesList> createState() => _QoutesListState();
}

class _QoutesListState extends State<QoutesList> {
  List<Quotes> qoutes = [
    Quotes(author: ' Kierra C.T. Banks', text: 'I aspire to be a woman that inspires by being.'),
    Quotes(text: 'The way to get started is to quit talking and begin doing.',author: 'Walt Disney'),
    Quotes(text: 'The greatest glory in living lies not in never falling, but in rising every time we fall.', author: 'Mandela')
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
        children: qoutes.map((q) => Text('${q.text}-${q.author}')).toList(),
      ),
    );
  }
}
