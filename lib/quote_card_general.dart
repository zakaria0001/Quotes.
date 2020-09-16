import 'package:flutter/material.dart';
import 'quotestock.dart';
import 'main.dart';
class GeneralQuote extends StatelessWidget {

  final Quote quote;
  final Function delete;
  GeneralQuote({ this.quote , this.delete});
  @override
  Widget build(BuildContext context) {
    return Card(
      color:Colors.black,
      margin:EdgeInsets.fromLTRB(16, 16, 16, 16) ,
      child:Padding(

        padding: const EdgeInsets.all(12.0),
        child: Column(

          children:<Widget>[
            Text(
                quote.text,
                style:TextStyle(
                  fontSize: 18.0,
                  color:Color.fromRGBO(38,111,157,1),
                )
            ),
            SizedBox(height:6.0),
            Text(
              quote.author,
              style:TextStyle(
                  fontSize:14.0,
                  color:Colors.grey
              ),
            ),
            SizedBox(height:20),
            FlatButton.icon(
                color: Colors.red,
                onPressed: delete,
                icon: Icon(Icons.delete_outline),
                label: Text('Delete')),

          ],
        ),
      ),
    );
  }
}
