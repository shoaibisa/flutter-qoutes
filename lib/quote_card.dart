
import 'package:flutter/material.dart';
import 'qoutes.dart';

class QuoteCard extends StatelessWidget {
  final Quotes quote;
  final VoidCallback delete;
  QuoteCard({required this.quote,required this.delete});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(15,15,15,0),
      child:Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18
              ),
            ),
            SizedBox(height: 6,),
            Text(
              quote.author,
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 6,),
            TextButton.icon(
                onPressed: delete,
                label: Text('Delete'),
                // style: ButtonStyle(
                //   backgroundColor:MaterialColor.,
                // ),
              icon: Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
