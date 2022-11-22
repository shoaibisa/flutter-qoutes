import 'package:flutter/material.dart';
import 'qoutes.dart';
import 'quote_card.dart';
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
    Quotes(text: 'Life is what happens when you`re busy making other plans.', author: 'John Lennon'),
    Quotes(text: 'If you set your goals ridiculously high and it`s a failure, you will fail above everyone else`s success.', author: 'James Cameron')
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
        children: qoutes.map((q) => QuoteCard(
            quote:q,
        delete:(){
              setState(() {
                qoutes.remove(q);
              });
        }
        )).toList(),
      ),
    );
  }
}
